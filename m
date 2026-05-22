Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62420CD5BB0
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 13:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkDQ7SB6G8GAZegTUTZcZISDwsgKijotahbmb9FPklg=; b=0lVKIpVcpBEKlS
	hkU16c+rmNGa4MCXhffA9E6eL5XBg9/FU38BhNuFQttoZx20TUjI3NlCFacoXNVMDUBJqazzbqxpa
	WnVqjRQ7+swA8drIfJGo2z2HqoeYs/UP9uyIEP+TCWzwf/umpKlnG6xDsF8URlMQmoBm+u/xO6K0u
	uk+17cWT82M4aQdRtlT7ZPLksMxAML/s0CKKV38o/tpkgpWcrhb06DD8GxzpPpR0iMQt8VdkVGipE
	dJLp3sRzgGNqLebFdC5Im9rcAT9g7AosIdkmC+aMAWyBJJUIisYU/62Voz699PIovM8wpYZkh+62R
	gyN8IyDN33j2gxuPpowA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQPaP-0000000Au7v-1Asm;
	Fri, 22 May 2026 13:06:45 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQPaM-0000000Au71-3m0h;
	Fri, 22 May 2026 13:06:44 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1779455196; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=eN4ATdUMpvDsfgn+TXOvfmw+QMiRR7TDY4hdHrR6FU/eI+PszKRAxswHsUPrncTHdlWruDHA/lze3yzGeFkzaV2MOWs7pI9L9O1Tgw1gcwGe6eGrRMC6LO3NBdTfqi8S4fGCIb5xEYMxfpQvMJ6QtymtT4HlbYnUEc1DumdSfDk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1779455196; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=4a2i19bMlznTfQSV7hH7AQSoCRRWAsRP+nmZLWmDdE4=; 
	b=N04NFLs7DKfVjbAMtp6CpE/llnaDJqqD75gVLBt/AsnQOthdSGvbr2jmvYb44iOknnBNQb5oY4ldsr86cIxWIiOwbdCFVncpmBuZKUWgh3vrnVmc3GF/e0Iox00xqLvSyLuUhCd/Si6k6ExK9bWAdml2idjenExM+BiAy6dpX2U=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779455195;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=4a2i19bMlznTfQSV7hH7AQSoCRRWAsRP+nmZLWmDdE4=;
	b=I6BoQBCtAles2jV2tx0BMUcMWHxLvYsSupLILMME8xHG36WLY1o8qFn9KzDodm0k
	DDXqToP4cSRhpM+lN4/g7c+Ndf/NV0uT9hZifuBfqdM+VIKxYO+UQN+byCbirJx+lOp
	ggow4WcOWZunGWeNly59du/Nw12KIzt4tYdafPVs=
Received: by mx.zohomail.com with SMTPS id 177945519388619.946341277208376;
	Fri, 22 May 2026 06:06:33 -0700 (PDT)
Message-ID: <98c2ba7b-5901-4462-8ea3-0de243ed285f@collabora.com>
Date: Fri, 22 May 2026 09:06:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: rkvdec: hevc: cap EXT SPS RPS control counts
 before descriptor assembly
To: Michael Bommarito <michael.bommarito@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260513181922.2075438-1-michael.bommarito@gmail.com>
 <67bd72ba-6dab-4bdb-a391-27545e287e94@collabora.com>
 <CAJJ9bXxR5U=33RSzB5uFEZv3ZL2JE=UjK7ZToxm0ewSqyu5GBw@mail.gmail.com>
Content-Language: en-US
From: Detlev Casanova <detlev.casanova@collabora.com>
In-Reply-To: <CAJJ9bXxR5U=33RSzB5uFEZv3ZL2JE=UjK7ZToxm0ewSqyu5GBw@mail.gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_060642_985427_D6D3D6C6 
X-CRM114-Status: GOOD (  14.45  )
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

SGkgTWlrZSwKCk9uIDUvMjAvMjYgMjA6NTcsIE1pY2hhZWwgQm9tbWFyaXRvIHdyb3RlOgo+IE9u
IFR1ZSwgTWF5IDE5LCAyMDI2IGF0IDk6MDTigK9BTSBEZXRsZXYgQ2FzYW5vdmEKPiA8ZGV0bGV2
LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+PiBTdGlsbCwgZGlkIHlvdSB0cnkganVz
dCBjaGFuZ2luZyB0aGUgY2FwIHRvIDY0ICguY2ZnLmRpbXMgPSB7IDY0IH0sKSA/Cj4+IFlvdSdk
IG5lZWQgYSB0ZXN0IHRoYXQgc2V0cyB0aGUgY29udHJvbCBmcm9tIHVzZXJzcGFjZSB0aG91Z2gu
Cj4+Cj4+IEl0IHNob3VsZCByZWZ1c2Ugc2V0dGluZyB0aGUgY29udHJvbCBpZiB0aGVyZSBhcmUg
bW9yZSB0aGFuIDY0IGVsZW1lbnRzLAo+PiB0aGVyZWZvcmUgdGhlIGhldmMgZGVjb2RlciB3aWxs
IG5vdCBydW4gYW55IGZ1bmN0aW9uIHVzaW5nIHRoZSBjb3VudAo+PiB2YWx1ZXMgZnJvbSB0aGUg
U1BTIChTZWUgIHJrdmRlYy12ZHB1MzgxLWhldmMuYzo2MDEpCj4gU3VyZSwgSSBjYW4gdGVzdCB0
aGF0IGFuZCBzZW5kIGEgdjIgZm9yIFNULiAgTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0Cj4gd2Ug
aGF2ZSBmb3VyIHNwb3RzIHdlIG5lZWQgdG8gY2hlY2sgYWNyb3NzIHRoZSBmbG93IHRob3VnaDoK
Pgo+IDEuIFNUIGNvdW50ID4gNjQKPiAyLiBMVCBjb3VudCA+IDMyClNUIGFuZCBMVCBjYW4gYmUg
aGFuZGxlZCB0aHJvdWdoIGNmZy5kaW1zIGFuZCB3aGVuIG51bV9uZWdhdGl2ZV9waWNzIC8gCm51
bV9wb3NpdGl2ZV9waWNzIGFyZSBub24temVybywgdGhlIGNvZGUgY2hlY2sgdGhhdCBTVCBhbmQg
TFQgaGF2ZSAKYWN0dWFsbHkgYmVlbiBzZXQuIElmIG5vdCwgdGhleSBjYW4gYmUgc2tpcHBlZC4K
PiAzLiBudW1fbmVnYXRpdmVfcGljcyAvIG51bV9wb3NpdGl2ZV9waWNzID4gMTYKVGhpcyBjb3Vs
ZCBiZSBjaGVja2VkIGluIHRoZSB2YWxpZGF0aW9uIHN0ZXAgb2YgdGhlIGNvbnRyb2wgaW4gdjRs
Mi1jb3JlLgo+IDQuIGRlbHRhX2lkeF9taW51czEgKyAxID4gaQpUaGlzIG9uZSB3b3VsZCBuZWVk
IHRvIGJlIGNoZWNrZWQgaW4gdGhlIGNvbnN0cnVjdGlvbiBjb2RlIGluZGVlZC4KPgo+IFNvIHdv
dWxkIHlvdSBhbHNvIHdhbnQgdGhlIHNhbWUgLmNmZyBhcHByb2FjaCBmb3IgdGhlIExUIGNhcD8K
U28geWVzIGZvciBMVCBkaW1lbnNpb25zLgoKRGV0bGV2LgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
