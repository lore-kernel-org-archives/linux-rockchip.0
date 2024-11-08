Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C070D5C0E8
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 15:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Cc:To:From:Message-Id:Date:Mime-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xzWUG+6MZ1PjBPuTVd3SQNSMp5A9nBMMNNzD7eRr24A=; b=NrW
	6wH2J46z467fRD0/LKP/QLt66JtRf2P/klDFJe5bygP9RXH1P29uAnVVZhEeI14DnrBlEO456xOGR
	jTutfSzyKHC2Vglw2tRfuIwF9Rh35yi0zkOfgz+rfDG9E+nB/HIgFev+BqCOEBuIsUpdCp1kCwsnh
	WUSi9LrkGxhvxWwwvnk6tymtl3H8JONyreetI6CXrB10I7XpVdeaZIVpUDIkV4sLfFUcokbE0m2K/
	lXTfIgG++/t6n9/cBQwuQMVcSADarwfZzI77WQtRXlIXQ73WJ/7FTFsFjT0acR1rn0Z/UNfabGHzn
	9vW6zWOontTkKWVYR5/+idHffahG31g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Qe6-0000000Ayzr-0XAw;
	Fri, 08 Nov 2024 15:11:34 +0000
Received: from out-185.mta0.migadu.com ([2001:41d0:1004:224b::b9])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Q9J-0000000Asuj-2SN0
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 14:39:47 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1731076780;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=jC6RQvdalAaD3FEmS6MVpWwqzOr/U1gTtWFRsxOXO2A=;
	b=WmMpNN/VRhm60XQWaSOd1o3BdHKeoKqGm9/1RxF0tQIkzkrEcr762T5SmCiXwMRsX20Bl6
	964+kLod+7CT8RTo+jdR2sgBesZojCKwGCqGvGFkGippzggnybF4arbF8f6FHmLe7cok+8
	AFD49u5XuinB4AFATHB1ANdHEMxsKKcZQAnE94YXG6eeaI0+O9twMeTsqa2Mac9nGfdmTj
	7QvB7z1l03OQnWBVdpOq3m/VXEhPQ4mP8unMeS3WfPsmWNQPpVSHurBftufKl7I++igf59
	6+3naGX9zCuSiN6PUMJkRt6h2mes1IrY/d6HISG0wZd9wNWfq8In37i1vdTzcA==
Date: Fri, 08 Nov 2024 15:39:30 +0100
Message-Id: <D5GVI1Q30BTS.1ZVQ4YC4OJYEL@cknow.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: <linux-kernel@vger.kernel.org>
Cc: <linux-rockchip@lists.infradead.org>, "Shawn Lin"
 <shawn.lin@rock-chips.com>, "Sudeep Holla" <sudeep.holla@arm.com>
Subject: Q: Kconfig: 'If unsure, say N'
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_063946_091096_2FD2071F 
X-CRM114-Status: UNSURE (   9.11  )
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
Content-Type: multipart/mixed; boundary="===============5166624685645449058=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5166624685645449058==
Content-Type: multipart/signed;
 boundary=71c104a0a8a0a912df6151f652c3536d0c5dbd311ec259957e1ff91df396;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--71c104a0a8a0a912df6151f652c3536d0c5dbd311ec259957e1ff91df396
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

In quite a number of Kconfig help text entries I see this:
"If unsure, say N."

But that raises the question: How can I be sure?

To me, this comes across as that the person who implemented the feature
recommends *against* using it, unless you think you know better then the
person who implemented it. Which is quite a high bar.

IIRC I did come across an entry which paraphrased said:
"This module can be useful in situation Y, but you run a real risk of
physically damaging your board when you use it.
So normally you REALLY should not enable this, but if you still need it
then the functionality is implemented in this module.

If unsure, say N."

Which is an excellent reason not to enable it ;-)
Moreover, it specifies when you can/should go against the advise and
tells you what the risk is if you do.

But the vast majority just says "If unsure, say N."

The problem is that I'd need a better justification to enable (as 'y' or
'm') a module then "Based on (the rest of) the Help text, this looks
really useful".

Not to discuss these specifically, but just for illustration:
``drivers/firmware/arm_scmi/transports/Kconfig`` has this
option: ``ARM_SCMI_TRANSPORT_SMC_ATOMIC_ENABLE``
which IIUC enables an *optional* feature for an atomic transaction.

Which sounds useful and harmless, yet ... "If unsure, say N."

And the trigger which caused me to actually write this email was
"scsi: ufs: rockchip: initial support for UFS"
which I interpret as: if you want to use UFS on Rockchip based devices,
you should enable this. But ... "If unsure, say N."

So it would be really helpful if the Kconfig help text:
1) did not say "If unsure, say N."
2) If the recommendation is indeed to NOT enable it ('normally'),
   specify why and under what situation/condition you can go against the
   maintainer/implementers recommendation

Cheers,
  Diederik

--71c104a0a8a0a912df6151f652c3536d0c5dbd311ec259957e1ff91df396
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZy4ipAAKCRDXblvOeH7b
bqMkAQC+MkAusJ4jN8vz+TnQ8cKySh54NYC+Uqvx6Mxbo3h9TAD9Fh6D/GyHLhJ4
6ek1YXYij0Te73Vj/b4O5NkeJC++ewQ=
=DMd0
-----END PGP SIGNATURE-----

--71c104a0a8a0a912df6151f652c3536d0c5dbd311ec259957e1ff91df396--


--===============5166624685645449058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5166624685645449058==--

