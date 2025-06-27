Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8AE9C7EE31
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 12:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYv3QURrcUL/ZZromGUq6+D5T0Mz4/sCqSqB6af2Wxk=; b=mZNZ70vwTms1cc
	i2bTqLv5D2hrSRgkm59OL5TcgSc40/vDDMYvomLueOeiVm4zzhOPUAcQnm0Xrlj75RlRWedF9PTxT
	wzjIhvDrUlkDldKf9dyfWzV4kbpn/CEFt7/zBSa/x8BYt33pRB4hwXma5jKb3Kv4QICdJqPRDFukX
	Rk+/Zs20OP+97uvbJ8NnneCQqBG4bs4pG9WjMPU++N+y0gNrbTZRaTypacxwylKZs1k0A+0OiIY6S
	Ugmq4U7akDVaLVs1cQ/caky5yM+RsTiKxYPWffs+NyO2JQ9/WxCyb1LQ4VJao1AOXl2BU6Q73HopX
	WXD9Psvaw6kTChSa4SHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV8bV-0000000EhT7-074M;
	Fri, 27 Jun 2025 12:54:53 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV7vQ-0000000EbX6-1z56;
	Fri, 27 Jun 2025 12:11:26 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1751026271; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=cb17DRa+OxjLrwffY5Uj3xYEaiaGmne6sU848NVhVV1eQ3rhc537meq1Vmf6aIAVEs8nNK8x3A1ar3Hw3mvWcMTg25AROWNwkRtKrwkMSTtLzkf0NYz4C4bcsQ6p0iTYFhLxAOOH9LHep9vUB1XeWUPW7zCH9CsvkOEGNlDgUV8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1751026271; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=TVvAK7b3Zpgjze3EOECMmyaomGUOJszYV73LMM3I2ns=; 
	b=WA0HZvOONA5TpwnslXEz/Tkkc9MDxU6c2rMp/t+aX6OQWc9kMV25X+fdRg05rlxhvNGd8BHJ1ootFnV7okW034JUgGXTxOYiyuZLWDTgusN11QiY9FC+5Vtfgao88aS34shPiw5TKTH+blnhk0F3AOoAh4DW7B4dfpBFHtgT3eo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nfraprado@collabora.com;
	dmarc=pass header.from=<nfraprado@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1751026271;
	s=zohomail; d=collabora.com; i=nfraprado@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=TVvAK7b3Zpgjze3EOECMmyaomGUOJszYV73LMM3I2ns=;
	b=ctkqGwwlGpULEtLxxvVc8Kv7Mc/irU8SYUzepCakFCtCNMUKyZCUc1/g8YLkXn4j
	R6RXe3YzTCP7wA8OKF1WFVZ2kNzFzNc9pzEPJHBynaIVMNJoiZHxNoGSBPYPx9ZJxb9
	LRiqAZkXcSwurY/h1sJcEwPlW07qbKyZXG6gXr40=
Received: by mx.zohomail.com with SMTPS id 1751026269193941.7172522916828;
	Fri, 27 Jun 2025 05:11:09 -0700 (PDT)
Message-ID: <903b8ec6ab8527e680b43dc7cb8aa7066a555247.camel@collabora.com>
Subject: Re: [PATCH v2] arm64: defconfig: enable further Rockchip platform
 drivers
From: =?ISO-8859-1?Q?N=EDcolas?= "F. R. A. Prado" <nfraprado@collabora.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Heiko Stuebner
	 <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
	 <will@kernel.org>
Cc: kernel@collabora.com, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Fri, 27 Jun 2025 08:11:06 -0400
In-Reply-To: <20250626-rk3588-defconfig-v2-1-ae6720964b01@collabora.com>
References: <20250626-rk3588-defconfig-v2-1-ae6720964b01@collabora.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_051124_544937_405FDE14 
X-CRM114-Status: UNSURE (   9.40  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCAyMDI1LTA2LTI2IGF0IDIyOjQxICswMjAwLCBOaWNvbGFzIEZyYXR0YXJvbGkgd3Jv
dGU6Cj4gRW5hYmxlIHRoZSByb2NrY2hpcC1kZmkgZHJpdmVyIGFzIGEgbW9kdWxlLCB3aGljaCBp
cyB1c2VkIG9uIFJLMzU4OAo+IGFzCj4gd2VsbCBhcyBSSzM1NjggYW5kIFJLMzM5OSB0byBtZWFz
dXJlIG1lbW9yeSBiYW5kd2lkdGguIEZvciB0aGlzLCB3ZQo+IGFsc28KPiBlbmFibGUgUE1fREVW
RlJFUV9FVkVOVCwgd2hpY2ggaXMgYSByZXF1aXJlbWVudCBmb3IgdGhpcyBkcml2ZXIuCj4gCj4g
QWxzbyBlbmFibGUgdGhlIHJvY2tjaGlwLXJnYSBkcml2ZXIgYXMgYSBtb2R1bGUsIHdoaWNoIGlz
IHVzZWQgb24KPiB2YXJpb3VzIFJvY2tjaGlwIFNvQ3MsIGluY2x1ZGluZyBSSzM1ODggYW5kIFJL
MzM5OSwgdG8gcHJvdmlkZSAyZAo+IGFjY2VsZXJhdGVkIGltYWdlIHRyYW5zZm9ybWF0aW9ucyB0
aHJvdWdoIGEgVjRMMiBpbnRlcmZhY2UuCj4gCj4gU3VnZ2VzdGVkLWJ5OiBOw61jb2xhcyBGLiBS
LiBBLiBQcmFkbyA8bmZyYXByYWRvQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTmlj
b2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KClJldmll
d2VkLWJ5OiBOw61jb2xhcyBGLiBSLiBBLiBQcmFkbyA8bmZyYXByYWRvQGNvbGxhYm9yYS5jb20+
CgoKLS0gClRoYW5rcywKCk7DrWNvbGFzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
