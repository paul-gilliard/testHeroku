<?php

namespace App\Security;
use App\Entity\User as AppUser;
use Symfony\Component\Security\Core\Exception\AccountExpiredException;
use Symfony\Component\Security\Core\Exception\CustomUserMessageAccountStatusException;
use Symfony\Component\Security\Core\User\UserCheckerInterface;
use Symfony\Component\Security\Core\User\UserInterface;
class UserChecker implements UserCheckerInterface
{
    public function checkPreAuth(UserInterface $user): void
    {
        if (!$user instanceof AppUser) {
            return;
        }
        // user is deleted, show a generic Account Not Found message.
        if ($user->getEnabled() == 0) {
            throw new CustomUserMessageAccountStatusException('Compte non validé, confirmez le par mail !');
        }
    }
    public function checkPostAuth(UserInterface $user): void
    {
        if (!$user instanceof AppUser) {
            return;
        }
        // user account is expired, the user may be notified
        if ($user->getEnabled() == 0) {
            throw new CustomUserMessageAccountStatusException('Compte non validé, confirmez le par mail !');
        }
    }
}
?>