From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
Date: Tue, 18 Jun 2019 14:27:35 +0530
Message-ID: <CAMty3ZA-wf7tRE=+38SujjXXNGC-pb-m9RzgxFBops6w5n9qzQ@mail.gmail.com>
References: <1558696796-10745-1-git-send-email-xieqinick@gmail.com>
 <1560756277-5928-1-git-send-email-xieqinick@gmail.com>
 <5ad4d842c462a19e6241fe620705381169d48318.camel@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <5ad4d842c462a19e6241fe620705381169d48318.camel-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, nick-XW3xCAIBE2TQT0dZR+AlfA@public.gmane.org, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Nick Xie <xieqinick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jun 18, 2019 at 1:55 PM Paul Kocialkowski
<paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org> wrote:
>
> Hi,
>
> On Mon, 2019-06-17 at 15:24 +0800, xieqinick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org wrote:
> > From: Nick Xie <nick-XW3xCAIBE2TQT0dZR+AlfA@public.gmane.org>
>
> Was this tested with SPL support? I don't see DRAM configuration here
> so it seems that it relies on the non-free rockchip loader.
>
> If that is the case, could you please indicate that in the commit
> message?
>
> To maintainers: please do not merge this series before DRAM init and
> SPL support is available for these boards.
>
> It seems that other RK3399 boards were merged without SPL support and
> sofar, I have the feeling that nobody cared to explain how we got into
> this broken situation. Please don't merge any more such board.

fyi: no rk3399 boards were merged w/o SPL. lpddr4 boards were merged
with TPL-enabled (which was discussed on the threads, if you remember)
with below boot chain.

rkbin (TPL) -> SPL -> U-Boot proper

Same case for this board as well.

Jagan.
