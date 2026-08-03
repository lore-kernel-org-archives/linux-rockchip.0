Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D3C2C55822
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 18:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igOWHJvcEqrahaI3krYn51c2keJxnMe2A3bMZOQZ0oM=; b=UvWy1f8Pm8H/9y
	SSr+MerITrivS6ibeCyAH6Tk9LV1dG4cB7V4xVaq1ToyHHzRZvaeWx6Qc3dUXmQfNhHl6abdnRWdf
	/nYd4I/WtEGy/X6Pk9PAJcjyOjZ92CZQEKZhbUVKNmijiobuJgqNdfGiWdvm6UnXaEjJFgTmiGrcJ
	FsZKc+RYGmxATChplpEWGikx+3lgufaCIsqKYFGJc3Vv0ozxDg48Wno71fbVX5pe55nVF7WbPdSOn
	7suMGphktwGNXJ6x2mTTYzC9OH5l0fG2x2QqT3TaJpadGhx1rj83IrpOObosU3VM1nsoFAbYHuHw7
	qvUiG9YNyCu4l7xLF2PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqx0o-00000000Hii-1Bf6;
	Mon, 03 Aug 2026 18:03:42 +0000
Received: from mail-ua1-x929.google.com ([2607:f8b0:4864:20::929])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqx0l-00000000Hhx-3scS
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 18:03:41 +0000
Received: by mail-ua1-x929.google.com with SMTP id a1e0cc1a2514c-977168e4f3dso2259132241.0
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 11:03:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785780218; cv=none;
        d=google.com; s=arc-20260327;
        b=IOEmzvoGNetQLpYfHE+Koh9y9UfiHtlvkKswb57h4s1heT25LJvIq2Q1bkpht1jJKc
         MGQF/AOVDBD64xVV4xR1haZRtxNPQSoVEU3WWiumj9McWO7RtSQdWCxZdKK69ZbAVAPL
         r2pfnJMBzP+9GsvAatbTfeEOl0xLEUpjehDlaPT3mLkvdVUUFrRpDD+mXMQYVmxmjr3F
         VHAGs7BjcBo3D3Bu2uIPtHhcNIpzHYD0mwJROjE7kuwhSQ+HacZOQcLv9c6FQa0cN9As
         sIxk8fW6KJTRn+5kNF2cybEw5pNtIryjjQOQien0AIZU11O93Zl3nYS/YIxhtpJBsDtj
         CvmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2r8t0fZLO1G1B7jNQrzEMX2EdERqWbCFEmueS3AzIlQ=;
        fh=Wlc9+ZGX4TuLvaNiWW6IRz76u56RiQKwjBnxvedctDM=;
        b=VXLvwPAQ0Cwu9H3GV+YMxE7fWVQBgp3QV8HSbnzizwORtiPJFtpvnOPNA0x1cTvTc/
         9FNnZjipPtLgNkOxIvcbvVA4wcQ/ZvIDIhSrD6tH8MEG7szE8ZpzDRBeIm83zPTf2bDV
         hRlAfEHbOFc/LmPd62VxZ1+1R5wCHNaIXSnomuGo+ffPjHxri6KH77ayZ51ceqSvLlEa
         1y+CNNAFkHxupH8WrbJ4gCrYMZgoj0On9lhMuiHeBkbi6rTuGldIGNQOARroAsWTGtNk
         M0qdb3/rauhSR0p6T+kqOnoNznHEAtSwOVwdOm8Gp0ok9fDuivACsp8gA9MQ+ufYeCsj
         JW7w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785780218; x=1786385018; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2r8t0fZLO1G1B7jNQrzEMX2EdERqWbCFEmueS3AzIlQ=;
        b=tBhmeTo1nFe5xBEGA4em/LpQx5VClY49TIhD1pUq6+70d5k5A4Tdbm9LMbA2uM6b+R
         bBzgik8r385PslEthjncDMrpcVLDktYvZrfYCuz86Gwmiqsw6IdMATLnwJ98tC0frOji
         I24AW3DKu9uXhgB7Tlw0npYxUe1q9lCuVnGmBEOjBf3WQasi4mqW1q18pI0dsSUpOVdx
         D1HhbkN3TZVZN/ENe4IGO8w/fdm7OdQQEel5oSr3xh7xaZdWV+5IKIO4FtgLwOEmOQPZ
         B3o9Tt+ZxhuDMpnYpm1eWyRaniT1iMuj5BTiKHryFRicEFWD69k2yhdfa484Z99g6Ca2
         E6EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785780218; x=1786385018;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2r8t0fZLO1G1B7jNQrzEMX2EdERqWbCFEmueS3AzIlQ=;
        b=Qo6jV3TunbDPqwmzC349YIeRJC7cF4OXPQPWqVId4vsytZR1SBEK9eBti0HYY1ubHx
         jYNmVLVMBrubMQRUccACKvD4FUgAAgQ1jR8pS4xW1tALf4SmnSpALwSvwm+/cEE8nOpv
         o7ViA1PAd/ZmMEgP9L8dzCmugMVVUPmcACKxDRHxJhBjjrkrvpjHN4Vimi04jfqkURAz
         jTY2evAvyNCEsgy/gG+PDS3xRT8cloyNU1Yob2ylYD/1n9nJ6ebluvjrjg007uu4SVgl
         7s5CcREEmDZo8jSTh3yhj1y6/kduQLd9TztqxtB1beZSY0rtYqxGu4294dGGbK7+5mfx
         0yAg==
X-Forwarded-Encrypted: i=1; AHgh+RoPFKYgO8RcwDtz9t4NnHqZgfLu8fJ2sIiLFSJl7LwQ96Ijw/X7ZQwMuLMpgJi29CkVwBWOWeYhmP3lWnDoWw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw05LkB4g326FqydskqkNqSIfnsW7kXqmkd4zx//UEyQDGUMaTv
	qNL3ASRklaWUDt/jDL6XYhsUvOra9eaqiy5RUtzwXJm9bcY1XNRpEmT+Y/WYHjN1aNq6/t1uNZS
	oUolKvx7ec3H1aCWVEqIxDAOJySLd7hY=
X-Gm-Gg: AR+sD12FgAxqwCYR9/W/agwcsKkkQGOHmVBztrpc8P5Q8y+T8M4enhQV3DqiYD4rQZO
	BghoJo7F3qt1x9rrI+QG1jNlyoXXNhoK481fhf82ay8kJ+5kvmXOlHhClNKb82py7SOYk0eKflv
	8D8LVoWd3o1lPZHioNFtxg/9PaTJlv7CxZiJxisKpfVPM0XepqiDJMe9t1fUMRvCFkxr7Eo7S4G
	FM6OTtK9HbDnavExstrCNb17keNuvmi4UqMbOcnWko8G27FSKjppJlbiqAHiwrMzDkl+ILKe2/S
	SqgTGGKjuhVyemu55hmsHHbSm6VOZA1jzdnYyhWPHX13t0VX/2Jx3zdtLAIKMAdBCv+bWCf/diZ
	Gq2VCivpdfz+ov//mVAV+7I7poQ3tCPyXN8rpZrI5hLmIFcoQwAj4X76HDLGPZIf7C3ikjUt+cB
	uLjeE/BW7hdjKoqdgYVYYcaucZIRqvaOlMxSJj7jPxV/eUI5qJ
X-Received: by 2002:a05:6102:6899:b0:726:8813:2085 with SMTP id
 ada2fe7eead31-75b23d6e2d3mr8230898137.13.1785780218392; Mon, 03 Aug 2026
 11:03:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-7-0a53cd9e21cc@gmail.com> <2979768f-4f83-4f28-ace3-826f4b4c6844@lunn.ch>
In-Reply-To: <2979768f-4f83-4f28-ace3-826f4b4c6844@lunn.ch>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Mon, 3 Aug 2026 12:03:27 -0600
X-Gm-Features: AUfX_mybO2gp37G6C7TCuAPmk0gNUYqtWf9KEEokxzjK6lix8AMcIQeuj4MOO0w
Message-ID: <CADvTj4prV688JDR-QAuNd+jTVFyE9aicRaciqq0M6sB0V2GiXQ@mail.gmail.com>
Subject: Re: [PATCH 07/21] dt-bindings: net: x-powers: add AC200 EPHY control
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>, 
	Richard Genoud <richard.genoud@bootlin.com>, Maxime Ripard <mripard@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	mfd@lists.linux.dev, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_110339_979923_C64B1701 
X-CRM114-Status: GOOD (  15.99  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBBdWcgMywgMjAyNiBhdCA3OjQw4oCvQU0gQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5u
LmNoPiB3cm90ZToKPgo+ID4gKyAgcGh5LW1vZGU6Cj4gPiArICAgIGVudW06Cj4gPiArICAgICAg
LSBtaWkKPiA+ICsgICAgICAtIHJtaWkKPgo+IERlc3BpdGUgdGhlIHBoeS0gYml0LCBwaHktbW9k
ZSBpcyBhIE1BQyBwcm9wZXJ0eSwgaXQgZGVmaW5lcyB0aGUgTUlJCj4gdGhlIE1BQyB1c2VzLiBJ
IHdvdWxkIG5vdCBleHBlY3QgdG8gc2VlIHRoaXMgYW55d2hlcmUgZWxzZS4KPgo+IFRoZSBQSFkg
ZHJpdmVyIGlzIHRvbGQgd2hhdCBNSUkgdG8gdXNlLCBwaHlkZXYtPmludGVyZmFjZSwgd2hpY2gg
dGFrZXMKPiB0aGUgdmFsdWVzIFBIWV9JTlRFUkZBQ0VfTU9ERV9STUlJLCBQSFlfSU5URVJGQUNF
X01PREVfTUlJIGV0Yy4KPgo+IFBsZWFzZSBleHBsYWluIHdoeSB5b3UgbmVlZCB0aGlzIGhlcmUs
IHdoeSBpcyB0aGUgTUFDIG5vZGVzIHBoeS1tb2RlCj4gcHJvcGVydHkgbm90IHN1ZmZpY2llbnQu
CgpJIGhhdmUgcmV3b3JrZWQgdGhpcyBmb3IgdjIuIFRoZSBwaHktbW9kZSBwcm9wZXJ0aWVzIHdp
bGwgYmUgcmVtb3ZlZCBmcm9tCmJvdGggY29udHJvbCBiaW5kaW5ncyBhbmQgdGhlaXIgRFQgbm9k
ZXMsIGxlYXZpbmcgdGhlIE1BQyBub2RlIGFzIHRoZSBzb2xlCnNvdXJjZSBvZiB0aGUgaW50ZXJm
YWNlIG1vZGUuIFRoZSBQSFkgZHJpdmVyIGluc3RlYWQgcGFzc2VzCnBoeWRldi0+aW50ZXJmYWNl
IHRvIHRoZSBzZWxlY3RlZCBjb250cm9sIHByb3ZpZGVyLgoKVGhlcmUgaXMgb25lIG9yZGVyaW5n
IGNvbXBsaWNhdGlvbjogdGhlIGNvbnRyb2wgYmxvY2sgbXVzdCBiZSBwb3dlcmVkIGJlZm9yZQp0
aGUgQ2xhdXNlIDIyIFBIWSBpZGVudGlmaWNhdGlvbiByZWdpc3RlcnMgYmVjb21lIGFjY2Vzc2li
bGUsIHdoaWNoIGhhcHBlbnMKYmVmb3JlIGEgTUFDIGhhcyBhdHRhY2hlZC4gRWFybHkgZGlzY292
ZXJ5IHRoZXJlZm9yZSB1c2VzIHRoZSBoYXJkd2FyZSdzCnJlc2V0LWRlZmF1bHQgTUlJIG1vZGUu
CgpGb3IgdjIsIEkgc3BsaXQgdGhlIHByb3ZpZGVyIGludGVyZmFjZSBpbnRvIHNlcGFyYXRlIHBv
d2VyX29uKCkgYW5kCnNldF9pbnRlcmZhY2UoKSBvcGVyYXRpb25zLiBPbmNlIHRoZSBNQUMgaGFz
IHN1cHBsaWVkIHBoeWRldi0+aW50ZXJmYWNlLCB0aGUKUEhZIHJlc2V0IHBhdGggY2FsbHMgc2V0
X2ludGVyZmFjZSgpLiBJZiB0aGUgcHJvdmlkZXIgaXMgYWxyZWFkeSBwb3dlcmVkLAp0aGlzIGNo
YW5nZXMgb25seSB0aGUgUk1JSV9TRUwgYml0OyB0aGUgbm9ybWFsIHBoeWxpYiBzb2Z0IHJlc2V0
IHRoZW4KY29tcGxldGVzIHRoZSBoYW5kb2ZmLiBJdCBkb2VzIG5vdCByZXBlYXQgdGhlIGZ1bGwg
Y29udHJvbC1ibG9jayBwb3dlciBhbmQKcmVzZXQgc2VxdWVuY2UuCgo+Cj4gICAgIEFuZHJldwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
