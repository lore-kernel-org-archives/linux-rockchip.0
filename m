From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 3/4] Rockchip dts32 changes for 4.14
Date: Wed, 16 Aug 2017 23:54:20 +0200
Message-ID: <CAK8P3a29Hz5Foxn5W_7vkmeLGLjDkDO-LAOTzMNwG5A1kPyu-Q@mail.gmail.com>
References: <12145142.47nS8LyXIe@phil> <3167861.YfTzp5M1RE@phil>
 <CAK8P3a1o4N47JO_Y_iW0jb0Q1O=fd_J0Z5pFKktz=U6EXrDw_w@mail.gmail.com>
 <10590238.TcdC6IbXJ9@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <10590238.TcdC6IbXJ9@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Aug 16, 2017 at 11:42 PM, Heiko Stuebner <heiko@sntech.de> wrote:
> Am Mittwoch, 16. August 2017, 23:10:32 CEST schrieb Arnd Bergmann:
> For the "legacy" socs (if that planned psci enablement does actually
> happen), I'd guess a supporting bootloader would just re-set the
> enable-method in the cpu nodes to psci and enable a yet-to-add
> psci node.
>
> So my personal migration strategy would be to leave it like it is
> on the kernel dt-side and let updated firmware wiggle the
> devicetree into form :-) .
>
> That way backwards-compatibility always stays in place and we
> don't require lock-step upgrades of bootloaders ... especially as
> the plethora of old Rockchip boards out there, sometimes even
> uses completely proprietary loaders.

Yes, sounds good. Thanks!

      Arnd
