From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH v5 7/7] doc: boards: Add rockchip documentation
Date: Mon, 30 Dec 2019 14:29:31 +0530
Message-ID: <CAMty3ZDkaVCBmKeofqn7p+EVGdHx3NZDt13kN6Nx_WVFSF5Pyg@mail.gmail.com>
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
 <20191230082819.30191-8-jagan@amarulasolutions.com>
 <CAJs94EYBrwf9Pt0R-_OypT-JHWGFpZYxRhKcUXWgXTFJi9O0HA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAJs94EYBrwf9Pt0R-_OypT-JHWGFpZYxRhKcUXWgXTFJi9O0HA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "Matwey V. Kornilov" <matwey.kornilov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: U-Boot Mailing List <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Dec 30, 2019 at 2:11 PM Matwey V. Kornilov
<matwey.kornilov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
> Hello,
>
> Thank you for the patch set.
> Currently, I have the following concern about documentation and
> overall proposed u-boot deploy procedure.
>
> There is a use case, when I have to use Rockchip proprietary TPL
> binary and deploy it instead of u-boot's one together with u-boot SPL
> and ITB images.
> It is required for debugging purposes because unfortunately u-boot TPL
> is usually less stable that proprietary one. And switching the TPL
> binary is basically the first step when I see random strange crashes.
> It is a good way to locate an issue origin.
>
> Could we somehow ensure that this backup deployment plan is still
> possible and documented in the text here? It would be great if the
> user could learn the procedure from the text, not from the source
> code, recovering correct offsets.

You mean to say rkbin => SPL => U-Boot proper ? if yes, I do agree
with this point and it is worth to document it as well. Kever, will
that be okay for you?

Jagan.
