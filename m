Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1F40C021B8
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 06:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOtBKRsjrBOPVc6DANfmCbfmuC+B6XQijtjJFeq8LZQ=; b=X6fUqNd6KZiGbt
	fITzvZN8CqibMJEAHy0cyunxoCy7DXHtN8karL1n5qXdeV4HXFYNzMU8e6E+0C0rBKCNycMEowL2Q
	7m3UckBNqO9/hdc7ZqPMEto43PPdaA7bPLlpZQOZy8t9MegX+ugo5i/eSaHV3BpRlIg0HpqB9EsPR
	lHIfPKubIqkQc46HmQVRE9FxJmtj1VCGMFVik7mxUZIucekHV2s7sojyhluEB5zFxV3LR2ul5U6Tj
	OKdqxk8whjlBChV0Geol2NSeuaoEcUdiuPmJLOz8ZEuL4/OBnjqG+w4MqhlPk9V60zMH20RgvPnkE
	Gmt7cdOH0xgMO7bfIzOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnBMm-00000002c6j-0n1b;
	Wed, 26 Feb 2025 06:58:00 +0000
Received: from mail-m1973180.qiye.163.com ([220.197.31.80])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnBEn-00000002arX-27jG;
	Wed, 26 Feb 2025 06:49:47 +0000
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id c3c47c7b;
	Wed, 26 Feb 2025 14:49:41 +0800 (GMT+08:00)
Message-ID: <a18fb035-3e7f-443a-8b24-9a51cba5604a@rock-chips.com>
Date: Wed, 26 Feb 2025 14:49:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, martin.petersen@oracle.com, heiko@sntech.de,
 linux-scsi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Abaci Robot <abaci@linux.alibaba.com>, James.Bottomley@HansenPartnership.com
Subject: Re: [PATCH -next] scsi: ufs: rockchip: Simplify bool conversion
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
References: <20250226021157.77934-1-jiapeng.chong@linux.alibaba.com>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20250226021157.77934-1-jiapeng.chong@linux.alibaba.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0NNT1ZKH0hOS0NKHx8ZHkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	5VSktLVUpCS0tZBg++
X-HM-Tid: 0a954104b35509cckunmc3c47c7b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kz46Fjo*GDIKMwsDTh4qMxwW
	VktPCRxVSlVKTE9LTk5JTkNISEtJVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpKSU03Bg++
DKIM-Signature: a=rsa-sha256;
	b=GDaQiCWDoYocllNU6WqKHl5m9xRxpcznUkUedTxHBomfvOO/UfsHDYxKuNmU/5Vl7SAtbkmy79QcfIew8C3GU5v5i1+sB1KHMHcsG7KO2GgLXUbCoUht9ILjVM/mZW3hwIRmTlkOljc6BudXvicBkuIWTqQ54c2maLyOufFlvqQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=cvkxqloIlTXo9JLh9EsUKKF24vwSjOiMeRjag/XPRuc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_224945_748516_639067CE 
X-CRM114-Status: GOOD (  12.06  )
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

5ZyoIDIwMjUvMi8yNiAxMDoxMSwgSmlhcGVuZyBDaG9uZyDlhpnpgZM6Cj4gLi9kcml2ZXJzL3Vm
cy9ob3N0L3Vmcy1yb2NrY2hpcC5jOjI2ODo3MC03NTogV0FSTklORzogY29udmVyc2lvbiB0byBi
b29sIG5vdCBuZWVkZWQgaGVyZS4KPiAKPiBSZXBvcnRlZC1ieTogQWJhY2kgUm9ib3QgPGFiYWNp
QGxpbnV4LmFsaWJhYmEuY29tPgo+IENsb3NlczogaHR0cHM6Ly9idWd6aWxsYS5vcGVuYW5vbGlz
LmNuL3Nob3dfYnVnLmNnaT9pZD0xOTA1NQo+IFNpZ25lZC1vZmYtYnk6IEppYXBlbmcgQ2hvbmcg
PGppYXBlbmcuY2hvbmdAbGludXguYWxpYmFiYS5jb20+CgpBY2tlZC1ieTogU2hhd24gTGluIDxz
aGF3bi5saW5Acm9jay1jaGlwcy5jb20+CgpUaGFua3MgSmlhcGVuZy4KCgo+IC0tLQo+ICAgZHJp
dmVycy91ZnMvaG9zdC91ZnMtcm9ja2NoaXAuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vm
cy9ob3N0L3Vmcy1yb2NrY2hpcC5jIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtcm9ja2NoaXAuYwo+
IGluZGV4IDViMGVhOTgyMDc2Ny4uMzUwY2IwZjhkMGMyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
dWZzL2hvc3QvdWZzLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1yb2Nr
Y2hpcC5jCj4gQEAgLTI2NSw3ICsyNjUsNyBAQCBzdGF0aWMgaW50IHVmc19yb2NrY2hpcF9ydW50
aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICAgCWNsa19kaXNhYmxlX3VucHJlcGFy
ZShob3N0LT5yZWZfb3V0X2Nsayk7Cj4gICAKPiAgIAkvKiBEbyBub3QgcG93ZXIgZG93biB0aGUg
Z2VucGQgaWYgcnBtX2x2bCBpcyBsZXNzIHRoYW4gbGV2ZWwgNSAqLwo+IC0JZGV2X3BtX2dlbnBk
X3JwbV9hbHdheXNfb24oZGV2LCBoYmEtPnJwbV9sdmwgPCBVRlNfUE1fTFZMXzUgPyB0cnVlIDog
ZmFsc2UpOwo+ICsJZGV2X3BtX2dlbnBkX3JwbV9hbHdheXNfb24oZGV2LCBoYmEtPnJwbV9sdmwg
PCBVRlNfUE1fTFZMXzUpOwo+ICAgCj4gICAJcmV0dXJuIHVmc2hjZF9ydW50aW1lX3N1c3BlbmQo
ZGV2KTsKPiAgIH0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
