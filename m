Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2350FE810D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 12:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F7i8jg/iexJiBAPyq5JDIToiuc8ZaPozkwc4fMmUodM=; b=jZaFAlpktIPGBB
	CuApNHRxqnYL7DnwYwv2FsW2ZvWdk9VOmoCOLTzpKi3OyOIsjkQRI4O7JeJLXK49qiW0Fx3qW9f1N
	ZY0lqyzMNwD8OHRcKvPp7oyX8tWCrq8/6NpNFvDrKaWwmsSkFBf3Mduu23QBE92Cy41swIbM3eaN/
	dRvffyjiHbbax06afLwLc2a6TgMSiNDDHt0AfOx5AzIu3/wn4XqV5Ek757mWd9oyV7ISsRMojcpKz
	FKOfS3cXi5uXjqtm80RPWxfpQZ2CLqD8XScWSarIZylu9IdVQv9JNAvg3iN3EHl/3uQapBMwBWnDS
	3KmbOIgrkFN2g9bhLp2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlTMN-000qv3-1T;
	Wed, 27 Sep 2023 12:09:43 +0000
Received: from m1-bln.bund.de ([77.87.224.105])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlTMJ-000qtY-0V
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Sep 2023 12:09:42 +0000
Received: from m1-bln.bund.de (localhost [127.0.0.1])
	by m1-bln.bund.de (Postfix) with ESMTP id 860B8AB5A4
	for <linux-rockchip@lists.infradead.org>; Wed, 27 Sep 2023 14:09:33 +0200 (CEST)
Received: (from localhost) by m1-bln.bund.de (MSCAN) id 6/m1-bln.bund.de/smtp-gw/mscan;
     Wed Sep 27 14:09:33 2023
X-NdB-Source: NdB
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/simple; d=itzbund.de;
	s=230316-2017-ed25519; t=1695816564;
	bh=NuCL+Ul/0dtzEbUBik1/xqBHCY4XgXXsKJePOuodXgc=;
	h=Date:From:To:Subject:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:Autocrypt:Cc:Content-Transfer-Encoding:
	 Content-Type:Date:From:In-Reply-To:Mime-Version:Openpgp:References:
	 Reply-To:Resent-To:Sender:Subject:To;
	b=m3WK8HWV8Phw/6g/5K0mztQsI40tSrH/UQrP7sv09nfbV+0R6WSU2eDepZldVZc7U
	 TmYAY4ya/pBhMGFsl25AQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=itzbund.de;
	s=230316-2017-rsa; t=1695816564;
	bh=NuCL+Ul/0dtzEbUBik1/xqBHCY4XgXXsKJePOuodXgc=;
	h=Date:From:To:Subject:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:Autocrypt:Cc:Content-Transfer-Encoding:
	 Content-Type:Date:From:In-Reply-To:Mime-Version:Openpgp:References:
	 Reply-To:Resent-To:Sender:Subject:To;
	b=QCx2HS4tW2zLAslqSVY1RV+LawK2hSF8QTfG+CUWj5aEaVy5jMjFETg+gKlYSk2WD
	 Rvfuu9em9sE9JzqnIXNGQRh3dYG3tMeIR3ShfE2kmpq0yAkA0pR1uvB0toJ3FcmCmD
	 xfKjgg+MB0vSU8d2Y7eOW/sB7JjDJxBOz/jflp87z0nfFfgk6p0rwEmyqSY+EcLSE/
	 JQpgZG+m9Y0Rwv/YlJyKOCL7MXjSA9l2iJRaqHl7SMfpr/fSsCkdWl9csl9DZ3WEaz
	 uKZ6PuIMqJ862OLOeydNy6UQmxSapCp8FRhfk/l26hfK3PfUYgdG0LnQFrs/csqsNx
	 HESAp5e68B/xw==
X-P350-Id: 28a0dba0e2249512
Date: Wed, 27 Sep 2023 14:09:24 +0200
From: E-Mail-Administration ITZBund <noreply@itzbund.de>
To: linux-rockchip@lists.infradead.org
Subject: Ihre E-Mail konnte nicht zugestellt werden
Message-ID: <20230927120924.GA4351@vlp22140.prod.groupware.itz.itzbund.net>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Content-Disposition: inline
X-Rusd: domwl, Pass through domain itzbund.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230927_050940_529121_3F4E371E 
X-CRM114-Status: UNSURE (   0.15  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Sehr geehrte Damen und Herren,

bitte antworten Sie nicht auf diese Benachrichtigung. Kontaktm=F6glichkeite=
n entnehmen Sie bitte der E-Mail-Signatur.

Aufgrund eines Zertifikatsproblems auf einem Antivirus-Gateway des ITZBund =
konnten E-Mails nicht zugestellt werden. Diese Nachrichten sollten daher no=
ch einmal versendet werden.

Sie erhalten diese Benachrichtigung, da Ihre E-Mail-Adresse in einer der fr=
aglichen Nachrichten enthalten war. Nachfolgend finden Sie die Einzelheiten=
 zu dieser E-Mail:

Datumsstempel: 25.09.2023 11:48

Absender: joro@8bytes.org
Empf=E4nger: samuel@sholland.org, mpe@ellerman.id.au, christophe.leroy@csgr=
oup.eu, orsonzhai@gmail.com, jsnitsel@redhat.com, angelogioacchino.delregno=
@collabora.com, linux-sunxi@lists.linux.dev, matthias.bgg@gmail.com, digetx=
@gmail.com, yong.wu@mediatek.com, jonathanh@nvidia.com, linux-arm-kernel@li=
sts.infradead.org, mjrosato@linux.ibm.com, jernej.skrabec@gmail.com, baolu.=
lu@linux.intel.com, krzysztof.kozlowski@linaro.org, jgg@nvidia.com, thierry=
.reding@gmail.com, alim.akhtar@samsung.com, will@kernel.org, m.szyprowski@s=
amsung.com, nicolinc@nvidia.com, linux-mediatek@lists.infradead.org, anders=
son@kernel.org, agross@kernel.org, linux-tegra@vger.kernel.org, linuxppc-de=
v@lists.ozlabs.org, extern.martin.grimm@itzbund.de, treding@nvidia.com, kon=
rad.dybcio@linaro.org, baolin.wang@linux.alibaba.com, npiggin@gmail.com, ke=
vin.tian@intel.com, linux-s390@vger.kernel.org, linux-samsung-soc@vger.kern=
el.org, linux@armlinux.org.uk, zhang.lyra@gmail.com, steven.price@arm.com, =
schnelle@linux.ibm.com, gerald.schaefer@linux.ibm.com, linux-rockchip@lists=
.infradead.org, iommu@lists.linux.dev, vdumpa@nvidia.com, heiko@sntech.de, =
linux-arm-msm@vger.kernel.org, robin.murphy@arm.com, wens@csie.org, robdcla=
rk@gmail.com

Betreff: 'Re: [PATCH v8 00/24] iommu: Make default_domain's mandatory'

Sollten Sie der Absender sein, so erw=E4gen Sie bitte den erneuten Versand.=
 In dem Fall, da=DF Sie diese E-Mail h=E4tten erhalten sollen, informieren =
Sie bitte den Absender =FCber Ihren Wunsch, die E-Mail erneut zu versenden.

Wir m=F6chten uns f=FCr die Unannehmlichkeiten entschuldigen.

F=FCr R=FCckfragen steht Ihnen die E-Mail-Administration des ITZBund gerne =
zur Verf=FCgung.


Freundliche Gr=FC=DFe

Ihre E-Mail-Administration
_______________________________________
V A 51 40 - Gateway-Systeme und Schnittstellen
Informationstechnikzentrum Bund (ITZBund)

Postanschrift: Postfach 301645, 53196 Bonn
E-Mail: VA5140@itzbund.de


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
