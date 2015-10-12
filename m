From: Kevin Hilman <khilman@kernel.org>
Subject: Re: [PATCH v2] PM / AVS: rockchip-io: Fix module autoload for OF platform driver
Date: Mon, 12 Oct 2015 11:25:54 -0700
Message-ID: <7hlhb8djv1.fsf@deeprootsystems.com>
References: <1443796077-24722-1-git-send-email-luisbg@osg.samsung.com>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-pm-owner@vger.kernel.org>
In-Reply-To: <1443796077-24722-1-git-send-email-luisbg@osg.samsung.com> (Luis
	de Bethencourt's message of "Fri, 2 Oct 2015 15:27:57 +0100")
Sender: linux-pm-owner@vger.kernel.org
To: Luis de Bethencourt <luisbg@osg.samsung.com>
Cc: linux-kernel@vger.kernel.org, rafael.j.wysocki@intel.com, nm@ti.com, heiko@sntech.de, linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Luis de Bethencourt <luisbg@osg.samsung.com> writes:

> This platform driver has a OF device ID table but the OF module
> alias information is not created so module autoloading won't work.
>
> Signed-off-by: Luis de Bethencourt <luisbg@osg.samsung.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Kevin Hilman <khilman@linaro.org>

Rafael, feel free to apply directly.

Kevin
