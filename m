Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F871C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 08:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9uNGkZ/ubRXTmrkYruKm/8Ea7sjpgfH0dQsQ5BYa7Fs=; b=YMyUyn+mH2YgYa
	HesPySCm+TISlWmnreoDw+lW95B+UKzxhZq1kxetpyj95bWkKG2rLmQc134EIZTCxA6K8COUZTU3n
	ijYA5Uk/lkBcof1lMoJKfuLTB4V3tjtC632GvVTA94ueS7H9A3eGQiLs5RaclAiszJoKSoRbxyxSf
	HoFcl0gWos+TKy/zpDrX+mOZgMvYKkbVhwTXFwJ/lgOEQMrz/Odwwn3zI5GILU/zt9mXZlIw2FJYC
	+dRA3VNXLWawPhtlKqBn6uRTy4gR4ztKhPsGICpN4/P9qlQQpXmb+HL470lRYDTwSbCzDd46C2ZtH
	yJooxR567A+xWA4pmSqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNq4D-000000004Vj-0lwS;
	Sun, 30 Jun 2024 08:37:49 +0000
Received: from mout.gmx.net ([212.227.17.22])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNq44-000000004Uf-1irg;
	Sun, 30 Jun 2024 08:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1719736628; x=1720341428; i=wahrenst@gmx.net;
	bh=m7SPGv3WP6LQSC9lHJmB/zEMbv+ujKxdEygp4TG85cY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:From:To:
	 Cc:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=leQyA7z9W87JGINBHNPdn8wHsvS7b51WwGVc437na+ilFIpt7fKrPl6ngCqcNMYL
	 WVjSC8T8MCS6G88yDRcBO9JHMulM5uGRAVDtdn0qXCEO800+TLQbUIfX6snFompKN
	 e3SPoEpBAEC7lb1XCsDbcO/EBf8r/vWMJJ+B+K4daYFMfSCug6PovMQk/WLPjpSMz
	 i0MlVoFFtutQxnetrr2u+9kiLALXEJBQwOVRRlbkRatnl5n16nhqdK6HZ5jlRqICD
	 AehB3nttbp9ywVqvTqKmNeWLB0eATnId9lciTWpjkkM2xwioGZQqtkRixJW/4ywMR
	 Z+0Ckz9xtt562b33OQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.127] ([37.4.248.43]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MGQnF-1se4fB1rED-00F7fR; Sun, 30
 Jun 2024 10:37:08 +0200
Message-ID: <6170552a-b6f4-4609-8ebf-084d1e483aff@gmx.net>
Date: Sun, 30 Jun 2024 10:37:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] wifi: brcmfmac: Add support for AP6275P
From: Stefan Wahren <wahrenst@gmx.net>
To: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org,
 krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org
Cc: efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com,
 minipli@grsecurity.net, brcm80211@lists.linux.dev,
 brcm80211-dev-list.pdl@broadcom.com, nick@khadas.com
References: <20240630073605.2164346-1-jacobe.zang@wesion.com>
 <20240630073605.2164346-6-jacobe.zang@wesion.com>
 <54132213-d81a-49b3-939e-17ff755e39c1@gmx.net>
Content-Language: en-US
In-Reply-To: <54132213-d81a-49b3-939e-17ff755e39c1@gmx.net>
X-Provags-ID: V03:K1:oX71Ut7Ci3BssJi9OnTutdlaP7ZlPNk/0PHWHyMCH/0YZ4T5TQc
 iLG8n7o3yCmivo6Y4wkZqKpTOsdaYElpqL2/gG6al6XuMbRkd8W91u531w6HhFuEXCpfBY0
 Nk8eeGY/hJxxr7A/zvCj3DfFShVVr22X/y+jMCa5DlSyA3Xu9WGRZ4NNKrZWgk5I3liqOC6
 Gb2OlYY9n2FvrN5+eJREg==
UI-OutboundReport: notjunk:1;M01:P0:/ePwModwulY=;dkb3w1s+c+OHICUOJPpIDYYjP6H
 DGmXnaE2dZeno3diDlyFZw39rd3Wzqwpi3XE2B46bbumLDauhNYXpqmdS6z4A3/dEx8IaGkhM
 iIEvBA6TnCL17r8qqtUUgjqmnMPZlgUErtepkVrQ8WAwyUlms4/CZFiEEnuGXmAjWnLSVsO8F
 T73ljIYax0E0eZzMxF3sxHowt77QuKFhN1X6++jkZVOuwgH0Zep3gMs5utcTeX2oQkp+HvUUx
 +JQ5vMNSwxJHUY29eHDlLT0UAsZ71TsJtxti0iX1tIo+1A2b5wWgefSF2kvzGqeflTq+R7Qhp
 ZUkDz+oW318xCqmfO/NKlsp8scMU4nilr/YYDVB4UwTWQoqbWpxqy7zc+qUBYubv1FU/0EcO3
 JpTTIsxOPkVxMez71eqB5SLvnvttWUM8i9Dy5EJym0kdQhyvoguEtzSwp+hdw1ylh/IDZkxjd
 bVVKqAKsMsix+fJ69ohDLcazP9qZmbaeaV7WSfn/KYbMrYe23XvJv/FmEcFI6xVVtiyjFLg3M
 Qi+eBPUtNmaF/xGI6/EvZeb2eZSW+fklPilBmSsNI7Ay5bMAn1SoZdjTZOz7pN/UF5GqZZokg
 tUi3Zeg3U6SuQk71n/JHPA6Lytu9askvRIqjAtQnlTUQu4Gcl7/SYvtWW264xJQ3U8E7yt9Vf
 SL6ohg2tYe2jWuHZV5BAo0dYJzRv6kaVC+pUbvBSHR7E4GtCviA4J0T3yhhZFUvdPqiKOlBqN
 HE/WzDbBsKNyQ/gu/QkysKgORaIpM93HZrQc7XoPgbCYFFJABNklvrI8jBN8vfErnhiqb0nz/
 tJ+QlBrct5pjL1jzaMdkxXBZEP1HkvnIu3yOvnDUYGVlA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_013743_964787_75964C73 
X-CRM114-Status: UNSURE (   6.96  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkFtIDMwLjA2LjI0IHVtIDEwOjM0IHNjaHJpZWIgU3RlZmFuIFdhaHJlbjoKPiBBbSAzMC4wNi4y
NCB1bSAwOTozNiBzY2hyaWViIEphY29iZSBaYW5nOgo+PiBkaWZmIC0tZ2l0Cj4+IGEvZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2luY2x1ZGUvYnJjbV9od19pZHMuaAo+
PiBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9pbmNsdWRlL2JyY21f
aHdfaWRzLmgKPj4gaW5kZXggNDQ2ODRiZjFiOWFjYy4uYzFlMjJjNTg5ZDg1ZSAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2luY2x1ZGUvYnJj
bV9od19pZHMuaAo+PiArKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAy
MTEvaW5jbHVkZS9icmNtX2h3X2lkcy5oCj4+IEBAIC01Miw2ICs1Miw3IEBACj4+IMKgICNkZWZp
bmUgQlJDTV9DQ180MzY2NF9DSElQX0lEwqDCoMKgwqDCoMKgwqAgNDM2NjQKPj4gwqAgI2RlZmlu
ZSBCUkNNX0NDXzQzNjY2X0NISVBfSUTCoMKgwqDCoMKgwqDCoCA0MzY2Ngo+PiDCoCAjZGVmaW5l
IEJSQ01fQ0NfNDM3MV9DSElQX0lEwqDCoMKgwqDCoMKgwqAgMHg0MzcxCj4+ICsjZGVmaW5lIEJS
Q01fQ0NfNDM3NTJfQ0hJUF9JRMKgwqDCoMKgwqDCoMKgIDQzNzUyCj4gSSB0aGluayB0aGlzIHNo
b3VsZCBiZSBjb252ZXJ0ZWQgdG8gaGV4YWRlY2ltYWwgdG8gYmUgY29uc2lzdGVudC4KU29ycnks
IHBsZWFzZSBpZ25vcmUgdGhpcyBjb21tZW50Cj4+IMKgICNkZWZpbmUgQlJDTV9DQ180Mzc3X0NI
SVBfSUQgMHg0Mzc3Cj4+IMKgICNkZWZpbmUgQlJDTV9DQ180Mzc4X0NISVBfSUTCoMKgwqDCoMKg
wqDCoCAweDQzNzgKPj4gwqAgI2RlZmluZSBCUkNNX0NDXzQzODdfQ0hJUF9JRMKgwqDCoMKgwqDC
oMKgIDB4NDM4Nwo+PiBAQCAtOTQsNiArOTUsNyBAQAo+PiDCoCAjZGVmaW5lIEJSQ01fUENJRV80
MzY2XzVHX0RFVklDRV9JRMKgwqDCoCAweDQzYzUKPj4gwqAgI2RlZmluZSBCUkNNX1BDSUVfNDM3
MV9ERVZJQ0VfSUTCoMKgwqAgMHg0NDBkCj4+IMKgICNkZWZpbmUgQlJDTV9QQ0lFXzQzNTk2X0RF
VklDRV9JRMKgwqDCoCAweDQ0MTUKPj4gKyNkZWZpbmUgQlJDTV9QQ0lFXzQzNzUyX0RFVklDRV9J
RMKgwqDCoCAweDQ0OWQKPj4gwqAgI2RlZmluZSBCUkNNX1BDSUVfNDM3N19ERVZJQ0VfSUTCoMKg
wqAgMHg0NDg4Cj4+IMKgICNkZWZpbmUgQlJDTV9QQ0lFXzQzNzhfREVWSUNFX0lEwqDCoMKgIDB4
NDQyNQo+PiDCoCAjZGVmaW5lIEJSQ01fUENJRV80Mzg3X0RFVklDRV9JRMKgwqDCoCAweDQ0MzMK
PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
