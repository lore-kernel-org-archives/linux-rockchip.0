From: Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
Date: Tue, 24 Dec 2019 13:44:55 +0400
Message-ID: <F311713B-D7DC-4029-90F2-5E162648349D@gmail.com>
References: <20191211235253.2539-1-smoch@web.de>
 <D1B53CE9-E87C-4514-A2D7-0FE70A4D1A5D@gmail.com>
 <cb3ac55f-4c8f-b0a0-41ee-f16b3232c87e@web.de>
 <47DB71CE-ACC4-431D-9E66-D28A8C18C0A4@gmail.com>
 <3c42d6de-670d-fee8-aa81-99f44d447e87@broadcom.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Content-Type: text/plain;
        charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <3c42d6de-670d-fee8-aa81-99f44d447e87@broadcom.com>
Sender: netdev-owner@vger.kernel.org
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
Cc: Soeren Moch <smoch@web.de>, Kalle Valo <kvalo@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>, linux-wireless@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>
List-Id: linux-rockchip.vger.kernel.org



> On 24 Dec 2019, at 1:01 pm, Arend Van Spriel =
<arend.vanspriel@broadcom.com> wrote:
>=20
> Can you elaborate on the "known SDIO issue"? Is it an issue with ADMA =
or something else. I am asking because there is a workaround in brcmfmac =
to avoid scatter-gather lists, which may or may not address the issue.

This describes the issue: https://patchwork.kernel.org/cover/10962975/

Below is the current workaround I=E2=80=99m using, which restricts the =
hack to Amlogic G12A and G12B devices that inherit =
=E2=80=9Camlogic,dram-access-quirk=E2=80=9D from a common SoC dtsi.

=
https://github.com/chewitt/linux/commit/187527747861b047c835f494fe3267d9b4=
959be1

Testing by Khadas staff found the max_segs/max_blk_count values and =
shows a performance impact (not a big surprise) but they appear to give =
a stable connection, which is better than a very unstable one. I=E2=80=99v=
e flagged things to linux-amlogic maintainer Neil Armstrong (on CC) and =
I expect he or colleagues will take a more scientific look in January.

NB: I=E2=80=99m happy to test other things. Just remember that I don=E2=80=
=99t code so you need to spoon-feed me with patches not suggestions.

Christian=
