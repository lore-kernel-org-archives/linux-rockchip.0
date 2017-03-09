From: Russell King - ARM Linux <linux@armlinux.org.uk>
Subject: Re: [PATCH RESEND] drm: dw_hdmi: Don't rely on the status of the
 bridge for updating HPD
Date: Thu, 9 Mar 2017 14:48:37 +0000
Message-ID: <20170309144837.GK21222@n2100.armlinux.org.uk>
References: <20170308081524.7672-1-romain.perier@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20170308081524.7672-1-romain.perier@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Romain Perier <romain.perier@collabora.com>
Cc: Archit Taneja <architt@codeaurora.org>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Sjoerd Simons <sjoerd.simons@collabora.co.uk>, linux-arm-kernel@lists.infradead.org, Daniel Stone <daniels@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Mar 08, 2017 at 09:15:24AM +0100, Romain Perier wrote:
> - dw_hdmi_update_power() will be called. As hdmi->force will be equal to
> DRM_FORCE_UNSPECIFIED the function will rely on hdmi->rxsense. This
> field has not been updated by the irq handler, so it will be false and
> DRM_FORCE_ON won't be put to hdmi->force.

Right, and wrong.

Your initial part is correct, but the latter sentence is incorrect -
we only ever update hdmi->force according to the user's force requests,
never as a result of the current state of the driver.

hdmi->force exists to allow the user to say "I want to force this connector
to always report disconnected or connected" to work around stupid monitors
that pulse everything from HPD to RXSENSE when in standby mode.

> This commit fixes the issue by removing the check for "!hdmi->disabled".
> As already explained, even if the PHY is partially disabled, information
> coming from HDMI Transmitter about HPD should be saved for a later use.

Your fix looks fine to me, as both dw_hdmi_update_power() and
dw_hdmi_update_phy_mask() effectively ignore attempts to update the
state while hdmi->disabled is true.

-- 
RMK's Patch system: http://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line: currently at 9.6Mbps down 400kbps up
according to speedtest.net.
