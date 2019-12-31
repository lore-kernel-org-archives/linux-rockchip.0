From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Subject: Re: [PATCH v5 7/7] doc: boards: Add rockchip documentation
Date: Tue, 31 Dec 2019 10:50:42 +0300
Message-ID: <CAJs94EacaLU4QJkhKAm6+v_=rtyNWkeCoYONLF43qTVSCko-cw@mail.gmail.com>
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
 <20191230082819.30191-8-jagan@amarulasolutions.com>
 <CAJs94EYBrwf9Pt0R-_OypT-JHWGFpZYxRhKcUXWgXTFJi9O0HA@mail.gmail.com>
 <CAMty3ZDkaVCBmKeofqn7p+EVGdHx3NZDt13kN6Nx_WVFSF5Pyg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <CAMty3ZDkaVCBmKeofqn7p+EVGdHx3NZDt13kN6Nx_WVFSF5Pyg@mail.gmail.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, Akash Gajjar <akash@openedev.com>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

=D0=BF=D0=BD, 30 =D0=B4=D0=B5=D0=BA. 2019 =D0=B3. =D0=B2 11:59, Jagan Teki =
<jagan@amarulasolutions.com>:
>
> Hi,
>
> On Mon, Dec 30, 2019 at 2:11 PM Matwey V. Kornilov
> <matwey.kornilov@gmail.com> wrote:
> >
> > Hello,
> >
> > Thank you for the patch set.
> > Currently, I have the following concern about documentation and
> > overall proposed u-boot deploy procedure.
> >
> > There is a use case, when I have to use Rockchip proprietary TPL
> > binary and deploy it instead of u-boot's one together with u-boot SPL
> > and ITB images.
> > It is required for debugging purposes because unfortunately u-boot TPL
> > is usually less stable that proprietary one. And switching the TPL
> > binary is basically the first step when I see random strange crashes.
> > It is a good way to locate an issue origin.
> >
> > Could we somehow ensure that this backup deployment plan is still
> > possible and documented in the text here? It would be great if the
> > user could learn the procedure from the text, not from the source
> > code, recovering correct offsets.
>
> You mean to say rkbin =3D> SPL =3D> U-Boot proper ? if yes, I do agree

Yes, I mean so.
I think it would be great to have something like the section
describing where do the things came from and the layout which is under
the hood.

> with this point and it is worth to document it as well. Kever, will
> that be okay for you?
>
> Jagan.


--
With best regards,
Matwey V. Kornilov
