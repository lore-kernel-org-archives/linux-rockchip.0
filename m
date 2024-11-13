Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67B62D462A1
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 13:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ibAz5pKkUhOfqTsfoWTH6TsCZ4+3Vr3vjkIN28i5SdQ=; b=eJaBRb9foTeZ3B0IchB90xJke+
	2EGO4Trr0q1jwKU6Voyo64dNX8BVn6RgBDWTuStw0jfM5bL8r5+S2F+G0yOIFA3MILk7Ga9ytgma/
	4saUyqkOfWPyLIOQvEFl7xJ4NMlrmYlfP3dPHmHPLHiTmiEfllZKNaQXCtJPVToaFc6jgwJhUVwG3
	qUxoxV1rmLvdlLQzfE34UMh61V6I6cWq+MEoRimJGnl/rfyy5KxPMItq47ixbSXJe45+ss+3xwELL
	jtfGYj6495liNSsy5RCkULoCJsogct85yj1VNmutWTXVn38DfnXL9nZQl2q0yE3zMvyn+bPSR/T+2
	5l4hAXcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBDlY-00000006zVz-2iqA;
	Wed, 13 Nov 2024 13:50:40 +0000
Received: from out-176.mta0.migadu.com ([2001:41d0:1004:224b::b0])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBDlV-00000006zUe-2JTK
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 13:50:39 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1731505834;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PmllX3O7yxtB5t0j4bQtEHSmJfWKhMTYAv9DCsBoJZM=;
	b=O73JTAg//QJoYdwUErx2lA+B6M7RbBITJFB/W+Frn7zNRqiykvBYaRSZXET1PWmLNuS1rl
	41i9aDd5ejCHTmsc/jw//vLLh/XtaVid4gDBd8rlsInSlmXrtdSFaj99LRyERrHZgKyBQ3
	3YIWI/TIE4A92/J6njCOKCnTOyKNEWIG6ZC3MCshPOv7pZJ/kR2WMc7lGXfTLM5peqvwrD
	1F8AqAGAhrwnSQQWtj53n7UDK+bGzczL5HF4M2vmaquSF6s1iMrUihWg/vSU8jY2q6TmCg
	FOaPnf2kVVXAhL59ocBsKVN6FFkiH0Wa9YjwKrENYt1EMWKNGnvTlGaZa9GqEQ==
Date: Wed, 13 Nov 2024 14:50:31 +0100
Message-Id: <D5L3L9M2LZQE.3JV1G0SIVTTZG@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>, "Shawn Lin"
 <shawn.lin@rock-chips.com>, "Sudeep Holla" <sudeep.holla@arm.com>
Subject: Re: Q: Kconfig: 'If unsure, say N'
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Harald Arnesen" <linux@skogtun.org>, <linux-kernel@vger.kernel.org>
References: <D5GVI1Q30BTS.1ZVQ4YC4OJYEL@cknow.org>
 <93f4889a-90ed-460d-b5bc-d566031b75d3@skogtun.org>
In-Reply-To: <93f4889a-90ed-460d-b5bc-d566031b75d3@skogtun.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_055037_751959_3091529E 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============4415626922136377674=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4415626922136377674==
Content-Type: multipart/signed;
 boundary=77415465acc9522a1101e182929d3f2ef91789092f296f44cef46464e604;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--77415465acc9522a1101e182929d3f2ef91789092f296f44cef46464e604
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Fri Nov 8, 2024 at 4:05 PM CET, Harald Arnesen wrote:
> Diederik de Haas [2024-11-08 15:39:30]:
>
> > In quite a number of Kconfig help text entries I see this:
> > "If unsure, say N."
> >=20
> > But that raises the question: How can I be sure?
>
> I usually interpret this as "If you don't know that you need it, you=20
> probably don't".

Yeah, that does sound like a sensible strategy. Thanks :)

Cheers,
  Diederik

--77415465acc9522a1101e182929d3f2ef91789092f296f44cef46464e604
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZzSuqgAKCRDXblvOeH7b
bg9sAQCQIhmyfDegBHLU0t/wVSrhFxgdD/qmbad+f4pUjRXpNAD+MEYe3/SOG2c7
xllMMEdS00fO9xp3IP52ZNe6NR5ziQ4=
=713h
-----END PGP SIGNATURE-----

--77415465acc9522a1101e182929d3f2ef91789092f296f44cef46464e604--


--===============4415626922136377674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4415626922136377674==--

