From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: vop: fixup linebuffer mode calc error
Date: Wed, 27 Jun 2018 15:10:12 +0200
Message-ID: <2037317.Zy9BHlEm4Q@phil>
References: <1530001004-25036-1-git-send-email-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1530001004-25036-1-git-send-email-hjc@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Sandy Huang <hjc@rock-chips.com>
Cc: David Airlie <airlied@linux.ie>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Sandy,

Am Dienstag, 26. Juni 2018, 10:16:44 CEST schrieb Sandy Huang:
> linebuffer mode should be LB_YUV_3840X5 when width is bigger
> than 1280 in yuv mode.
> seperate yuv and rgb case make the scl_vop_cal_lb_mode() logic
> is clearer.
> 
> Signed-off-by: Sandy Huang <hjc@rock-chips.com>

applied to drm-misc-next


Heiko
