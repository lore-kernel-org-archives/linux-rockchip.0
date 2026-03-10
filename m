Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 900C7EA8550
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 09:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dslJKunhpkyQkNbsGjicwHF3xTDuQ2eVr6EW7kKs8jE=; b=UV2Qt7zS3ES/sSD9QSxq6d3o2u
	7317qFeIq91jJu6gQYbFB4UrXjz/S7u9rIN9mtcYpTvtpARnqiuyHVIRkIM+BgHvHQtqt/7lJ+eli
	/fS/t76/bUUU7a492H0atBj3lXvSNG03w6L2LQawfhfsLcAA+HWkaZuAf6okJurRsqBQXEzu9D8sn
	QvoyFn9ieKP//NTJkrrnxZlhtaQlsDCjsrI+8taKJQfsWPxR+/sDLEiQDBxmD/AM++JPnY78sY3qf
	pIL0AM+vb2aspuFmXZ1VWfagffwoy4+DrpTyOIGyqqOdzAU0t9DITDtUPsMjVelWm80Q/dGgmhwSn
	eMJMOjig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzt9r-000000093Xw-3B8v;
	Tue, 10 Mar 2026 09:13:43 +0000
Received: from tika.stderr.nl ([94.142.244.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzt9p-000000093XF-25he
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 09:13:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mail.tikatika.nl; s=201709.tika; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=AGhloFiVA5y4ksv4lyq7SHgtFdfiIPNTQVDzo7Hu0zo=; b=OMn7v8iVARVKGyTAYQCJEBQ7DS
	TQs95aUL5RqrYohuhlChhwTw1117kxjmPJ+dr8DpR4ObA9OUncGXw2Jih+yghlxVIcDder2/uWBvG
	wugrxKPy9Iq5qMwcXkNMlb8ZaUWkCGWAuxIk3l8RDhCGZk4eO+46zaJZzihP+D1OHzrg=;
X-Preliminary-Spam-Score: -3.4 (---)
Received: from [10.42.0.16] (helo=login.tika.stderr.nl)
	by tika.stderr.nl with smtp (Exim 4.96)
	(envelope-from <matthijs@stdin.nl>)
	id 1vzt9a-0002M4-0p;
	Tue, 10 Mar 2026 10:13:29 +0100
Received: (nullmailer pid 2675192 invoked by uid 2001);
	Tue, 10 Mar 2026 09:13:24 -0000
Date: Tue, 10 Mar 2026 10:13:24 +0100
From: Matthijs Kooijman <matthijs@stdin.nl>
To: Linus Walleij <linusw@kernel.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Bartosz Golaszewski <brgl@kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH RESEND 1/2] arm64: dts: rockchip: rk3308: Add gpio-ranges
 properties
Message-ID: <aa_gs9RgvXkcZCa3@login.tika.stderr.nl>
Mail-Followup-To: Matthijs Kooijman <matthijs@stdin.nl>,
	Linus Walleij <linusw@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Bartosz Golaszewski <brgl@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
References: <20260302202121.197288-1-matthijs@stdin.nl>
 <20260302202121.197288-3-matthijs@stdin.nl>
 <e439f2f7-0b25-41a5-951a-d8d3bc9f2bf2@kwiboo.se>
 <aa_cCCc7FqdSv8eX@login.tika.stderr.nl>
 <CAD++jLmFt6N=v4RsxWqWKcsOonxbyoe7F__j+xNr4c8LWdgR7g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD++jLmFt6N=v4RsxWqWKcsOonxbyoe7F__j+xNr4c8LWdgR7g@mail.gmail.com>
X-PGP-Fingerprint: E7D0 C6A7 5BEE 6D84 D638  F60A 3798 AF15 A156 5658
X-PGP-Key: http://www.stderr.nl/static/files/gpg_pubkey.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_021341_536602_3B62F169 
X-CRM114-Status: GOOD (  14.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0812943008289954580=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0812943008289954580==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DBSJE9mJunT+HFbc"
Content-Disposition: inline


--DBSJE9mJunT+HFbc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hey Linus,

> We do not like it when people depend on the global GPIO numbering.

Yeah, I know. That's also why this patch is useful: It stops relying on
global numbering for auto-defining gpio-ranges and instead defines them
explicitly (for this particular DT at least).

Looking at the code (rockchip_gpiolib_register()), I do think it could
be rewritten to use dynamic GPIO numbering (since the same code
currently sets gc->base based on the bank->pin_base, and then defines
gpio-ranges based on gc->base, but I think it could just use
bank->pin_base directly and *not* set gc->base at all to use dynamic
numbering). However, actually making such invasive changes is out of
scope (and time budget) for me :-)

> > but I see in the code that
> > GPIO drivers decide themselves (by setting gc->base statically or maybe
> > based on DT).
>
> They *can* but they really shouldn't. This mechanism exists for
> legacy reasons.

I did read this comment today:

	/* dynamic allocation of GPIOs, e.g. on a hotplugged device */
	static int gpiochip_find_base_unlocked(u16 ngpio)

Which suggested to me that static allocation was still the recommended
default and dynamic allocation primarily used for cases where static
allocation cannot work (like hotplug). But your messages suggests that
static allocation is discouraged more actively than that.

Gr.

Matthijs

--DBSJE9mJunT+HFbc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMyF3AetYrDfGJ9el6ZMxy91tJYwFAmmv4K8ACgkQ6ZMxy91t
JYxWkA/+JfuPHiaRRkRMBdeQNolTsI68Y3tfdseWxZhI9cMyH6BVVBEf4OBhFD/x
G803DkjdkO0APcto+seYIIGIjKIgGzD1vQMqwbWYINz8vB2EkdI43kGMG5X4IxLH
BQr1wHW2orjvx7sNEAs/3WBNDtKeQueECQRs7+4sxfA8f5gSLD84uRhu4hjvH6py
7qksNhVkqzwuIBu5dYTkj0QUL6fb7ht3iloAsnr0SjbUx1WRI8XubffRRXxxyl5W
EFbm3x5dYMviqF2ix1H7IfHqeqwZxuZtHmwpj2+PXvfGCJ0EFbhKs2JSm74yD6cQ
38/sc7ox3IHLYnL+aVHcYOh2TT4O0hfR7kaOd/ej6c20FwZFCYzCV6+Ya9gC8jws
Yp2pdb/6e/JEf+9Wi57BTzDMRt7/iyVqoMcZT1oXX56kbgzPcCGH1Ct2hatNAQLb
DNZc4LFool3YozKK1bofkdEpM0Gsn8b4AW8nmXCNUzfq8vh0Di7SoBm963HINGnk
ML3kC38i5tbPoFhDdKjUe+uTtv48PN/9BMzWl5xJQ/B2ijBG76cI/wA/JMhiEdUt
AL9V2cTcqPWJ9B93BRr1BrM05PrBB+mzGMpkj+vvgj3DvH7Cfym3GwHk0kRH6Bjq
jIm8H8X2OBNYYTUXHsOkzQbpRpANDuqCXq4EvbXYTUBxMkHAp9A=
=72fd
-----END PGP SIGNATURE-----

--DBSJE9mJunT+HFbc--


--===============0812943008289954580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0812943008289954580==--

