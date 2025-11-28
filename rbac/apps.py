"""
App configuration for the rbac app.
"""

from django.apps import AppConfig


class RbacConfig(AppConfig):
    """Configuration for the RBAC (Role-Based Access Control) application."""

    default_auto_field = "django.db.models.BigAutoField"
    name = "rbac"
    verbose_name = "Role-Based Access Control"

