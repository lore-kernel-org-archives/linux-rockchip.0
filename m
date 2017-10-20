From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] pinctrl: rockchip: Add iomux-route switching support for
 rk3288
Date: Fri, 20 Oct 2017 18:58:58 +0200
Message-ID: <40786265.ZDfztTY44U@diego>
References: <20171013225337.5196-1-phh@phh.me> <2040825.vRYCsv903Y@diego>
 <68b8765d-3d55-3fdd-e23e-776e978c38bd@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <68b8765d-3d55-3fdd-e23e-776e978c38bd-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Pierre-Hugues Husson <phh-8tEavu1zA38@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 20. Oktober 2017, 09:44:55 CEST schrieb Hans Verkuil:
> On 20/10/17 09:38, Heiko St=FCbner wrote:
> > Hi Hans,
> > =

> > Am Freitag, 20. Oktober 2017, 09:28:58 CEST schrieb Hans Verkuil:
> >> On 14/10/17 17:39, Heiko Stuebner wrote:
> >>> So far only the hdmi cec supports using one of two different pins
> >>> as source, so add the route switching for it.
> >>> =

> >>> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> >> =

> >> Just tested this on my firefly reload and it works great!
> >> =

> >> Tested-by: Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
> > =

> > oh cool. I really only wrote this based on the soc manual,
> > so it actually surprises me, that it works on the first try :-)
> =

> One note though: I've only tested it on my Firefly Reload. I don't have a
> regular Firefly, so I can't be certain it works there. Just covering my a=
ss
> here :-)

Haha ... I guess the only thing I could have messed up would be the
ordering (valu0 -> gpio0, value1 -> gpio7 ... and reverse), so if it were
really wrong, you shouldn've have seen any results at all.
