Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80C9CC87FCA
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jul 2025 17:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UM1JmshwHqsP17dmlt3PLkVa9SXmTcLVgS7d5bTUzWg=; b=oLW3XynAsgPTEIwpGmrtgKiW5/
	vrW29yxknB+KH+TswHW//nhmY+hGHmFeghMbRBY2om28LNQmWBnLnDy9i+eFw5KVV2h2WmJQUfk+0
	L+AjPRuCPs5xu9/zrj64OJQtVf2UYmCvibRpW/Lp16j4Usx1cUDrRP6AxuA6VsZ1cdLv607/HSI5V
	U6e13jFlBCMJlbIjl6YoLs+uKWpVQ0K2tgMmy8s7GF1dBpVZ49wcN9PGDuQ17D/SbUHow/7VZXfZt
	op3f9Dmt8SIQ7fc9yI9xHzxJUFX30B2bBIxTNhyZCVwhECLBmAG6CyyHPtwHZwqgD1blR9yY9oIGL
	03KacrkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufLq4-0000000AHsL-1RvV;
	Fri, 25 Jul 2025 17:04:08 +0000
Received: from out-181.mta1.migadu.com ([95.215.58.181])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufLpz-0000000AHqy-2WWR
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Jul 2025 17:04:06 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1753463031;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Q6NaXMg9fbROH9LvIGCHCsqgrXQO+KbOb0QRffIyTME=;
	b=lMYRbbWdVu9phJd7Q2DFv8Z9C2qAH919I0996wblEzzaVBasc+xxHGRU3M3Zp05/pBarYR
	tB2bdt8xpLkn39yB2WOvU6IJWD0DC5EMcw+JgDP4EsDb8Jdld4Ez0FLfLVTYGjZaplAUO2
	YWHNsenPJXB2mqKwteYxOdHxKQHmH4J+/BArnDso+N7Os0hUvCMmo6+8qC/FRW0/h7I6bU
	1P81Lf5C/IEpTYiv5xnCC2RruYkXNWI8Dtqf4J7TzOqI4wNKEh/edzIuFgECkD6YXY0mjG
	KqBQ6Le2cM+47oAUOI/htPjC8cwqHguDZwGRdYlP2Qp9xbe8kGGBfqEcFFYJ9w==
Date: Fri, 25 Jul 2025 19:03:29 +0200
Message-Id: <DBLARE9EUGTB.1AIKSIZBIXHIJ@cknow.org>
Cc: "Chen Wang" <unicorn_wang@outlook.com>, "Drew Fustini" <drew@pdp7.com>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v6 1/8] mmc: sdhci-of-dwcmshc: add common bulk optional
 clocks support
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Adrian Hunter" <adrian.hunter@intel.com>, "Robin Murphy"
 <robin.murphy@arm.com>, "Chen Wang" <unicornxw@gmail.com>,
 <aou@eecs.berkeley.edu>, <conor+dt@kernel.org>, <guoren@kernel.org>,
 <inochiama@outlook.com>, <jszhang@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <palmer@dabbelt.com>,
 <paul.walmsley@sifive.com>, <robh@kernel.org>, <ulf.hansson@linaro.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-mmc@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
 <chao.wei@sophgo.com>, <haijiao.liu@sophgo.com>,
 <xiaoguang.xing@sophgo.com>, <tingzhu.wang@sophgo.com>
References: <cover.1722847198.git.unicorn_wang@outlook.com>
 <e57e8c51da81f176b49608269a884f840903e78e.1722847198.git.unicorn_wang@outlook.com> <f81b88df-9959-4968-a60a-b7efd3d5ea24@arm.com> <99899915-2730-41c7-b71a-f8d97bb6e59c@intel.com> <DBKCYCNRNTMZ.1XJU81M6EE2D0@cknow.org> <30cb2e71-5e0b-4fa0-b0e0-3263d9aa8712@intel.com>
In-Reply-To: <30cb2e71-5e0b-4fa0-b0e0-3263d9aa8712@intel.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_100403_776046_B33EBD69 
X-CRM114-Status: GOOD (  10.63  )
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
Content-Type: multipart/mixed; boundary="===============6972471676378732090=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6972471676378732090==
Content-Type: multipart/signed;
 boundary=8c1edd4abc64afa689b98190459caaa658628e964ab805c9823f0dd1a1b2;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--8c1edd4abc64afa689b98190459caaa658628e964ab805c9823f0dd1a1b2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Thu Jul 24, 2025 at 4:57 PM CEST, Adrian Hunter wrote:
> On 24/07/2025 17:33, Diederik de Haas wrote:
>> On Wed Jul 23, 2025 at 7:33 AM CEST, Adrian Hunter wrote:
>>> On 22/07/2025 21:33, Robin Murphy wrote:
>>>> A bit late for a "review", but Diederik and I have just been
>>>> IRC-debugging a crash on RK3568 which by inspection seems to be caused
>>>> by this patch:
>>>>
>>>> On 2024-08-05 10:17 am, Chen Wang wrote:
>>>>> From: Chen Wang <unicorn_wang@outlook.com>
>>>>>
>>>>> In addition to the required core clock and optional
>>>>> bus clock, the soc will expand its own clocks, so
>>>>> the bulk clock mechanism is abstracted.
>>>>>
>>>>> Note, I call the bulk clocks as "other clocks" due
>>>>> to the bus clock has been called as "optional".
>>>>>
>>>>> Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
>>>>> Tested-by: Drew Fustini <drew@pdp7.com> # TH1520
>>>>> Tested-by: Inochi Amaoto <inochiama@outlook.com> # Duo and Huashan Pi
>>>>> ---
>>>
>>> Presumably the problem has gone away with:
>>>
>>> 	commit 91a001a1a0749e5d24606d46ac5dfd4433c00956
>>> 	Author: Binbin Zhou <zhoubinbin@loongson.cn>
>>> 	Date:   Sat Jun 7 15:39:01 2025 +0800
>>>
>>> 	    mmc: sdhci-of-dwcmshc: Drop the use of sdhci_pltfm_free()
>>>
>>> which is in next.
>>>
>>> In which case a separate fix is needed for stable.
>>=20
>> Adding that patch to my 6.16-rc7 kernel indeed stopped the OOPSies.
>> Thanks!
>
> You need the other patches that it depends on, otherwise you are
> just leaking the memory.  Refer:
>
> 	https://lore.kernel.org/all/cover.1749127796.git.zhoubinbin@loongson.cn/

Also with the other patches, the OOPSies stopped :-)

Cheers,
  Diederik

--8c1edd4abc64afa689b98190459caaa658628e964ab805c9823f0dd1a1b2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaIO47QAKCRDXblvOeH7b
bh72AQCh2k0eqJiG8Ya5dmzENE7WFUBjyOZZW10vyWI/TozQJAEAlJekvqK7tuae
XFsYO2aDmaIN1Y0pZTJ7d2kzkrzxwQk=
=ZwZn
-----END PGP SIGNATURE-----

--8c1edd4abc64afa689b98190459caaa658628e964ab805c9823f0dd1a1b2--


--===============6972471676378732090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6972471676378732090==--

