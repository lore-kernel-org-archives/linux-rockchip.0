From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v11 00/11] Rockchip ISP Driver
Date: Thu, 14 Nov 2019 13:17:22 +0800
Message-ID: <20191114051722.GA316916@kroah.com>
References: <20191114051242.14651-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191114051242.14651-1-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>
Cc: linux-rockchip@lists.infradead.org, mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, mchehab@kernel.org, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, jeffy.chen@rock-chips.com, zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org, robh+dt@kernel.org, hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org, jacob-chen@iotwrt.com, zhengsq@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Thu, Nov 14, 2019 at 02:12:31AM -0300, Helen Koike wrote:
> Hello,
> 
> This series adds the Rockchip Image Signal Processing Unit v1 driver to
> staging.
> 
> The main reason to be in staging is that people are already using it from the
> mailing list (including libcamera), and having it in mainline makes the workflow
> easier. Also, it is easier for other people to contribute back (with code
> or testing the driver).
> 
> We plan to actively work on this driver to get it our of staging.
> 
> This patchset is also available at:
> https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v11
> 
> Libcamera patched to work with this version:
> https://gitlab.collabora.com/koike/libcamera
> (also sent to the mailing list)
> 
> The major difference in v11 are:
> - Fixed compiling warnings found with W=1
> - Fixed checkpatch errors
> - Add clock-names values in dt-bindings
> 
> This series only touches MAINTAINERS file and drivers/staging/

Looks sane, but as this is drivers/staging/media I am guessing this will
go through the media kernel tree, not my staging tree, right?

thanks,

greg k-h
