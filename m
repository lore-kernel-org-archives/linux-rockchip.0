Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3916DCCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 14:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/msih+XhPqlmr72aYN0TCKK+cjSCkCQJzC6bx3vB6g=; b=wlZQHs2yA9qKGl
	dXEfHTqGJD3OyP5SlYb6i23SVqH+YGJWICKG9gHVzpw379YfMZto8ZvXjY1YHwbXspUF8EqpYuGYW
	O75GVxJM4zmWG13YXJvrw2S4+j1LC8DltV2SSjdJ1vJ3r3N5Rt81E5NIprgzj0gK/yxdMUzgxRiwA
	LZRR6mjxsqPMK2oW2u9CjjWeQ0ROYYrAq5vB4aU1SQrRarYR5FC55r/x2CdaeIBVvr8cQtYmExOiM
	i2DtfXTpjm6zyFgCK9uW128Qyg/kq9yeYPmMokS2ymT2NE5xcGuyz2YqrYQE22f2OYpF0dE3vL/+e
	03nuuF2w5BnDU+Kn9ZIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIpRZ-00000007KDr-1Rff;
	Tue, 11 Nov 2025 14:34:01 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIpRX-00000007KDU-0KQC
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 14:34:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 9B76740FD6;
	Tue, 11 Nov 2025 15:33:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762871636; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Pti+hAPvZUGNEVWiBJ60p7rB+MkbfFfCjP1hWGU9rPk=;
	b=EMWNWpo7VeISPV67uOpkuS1OFaM75AYaCiyR08gxSyse08aOM1mUcRuhCKgIrckPtv5wXO
	mqTaDwgugg1iS7CSe8RC1skyCxyyVAP19eJiQEK78Am4ORr9/uNZ9uKQQ4Ff2XvDuTbd9Y
	KQ8CS58SETI9D4WCRxf+7tshkW7FvvuatPsROv0rv9xbLREQALyl5a8hAlviEILBVZWNBM
	AUW1CqOpVgncpdwg2S/4vXRXCncKAW94UnPyR1ZlB8NWsOuEHsbgSvyrV3kyC7feJNeY+k
	MF+FThzUVnex2BQUGdLEgn6h96VJZe5XO0AlfkyW7mE5rwMhJszxfmbdnbQ7qA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com> <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
Date: Tue, 11 Nov 2025 15:33:49 +0100
Cc: "Joseph Kogut" <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 0/3] Add Radxa CM5 and IO Board
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_063359_366339_CFD57D3A 
X-CRM114-Status: GOOD (  16.78  )
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

SGVsbG8gYWxsLAoKT24gVHVlc2RheSwgTm92ZW1iZXIgMTEsIDIwMjUgMTI6NTIgQ0VULCBGVUtB
VU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+IE9uIDExLzYvMjUgMDI6NDgsIEpv
c2VwaCBLb2d1dCB3cm90ZToKPiA+IE9uIFdlZCwgTm92IDUsIDIwMjUgYXQgNDoxNeKAr0FNIEZV
S0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4gd3JvdGU6Cj4gPj4gSSdkIGxpa2UgdG8gY2xh
cmlmeSB0aGUgc2l0dWF0aW9uIHJlZ2FyZGluZyB0aGUgdjYgcGF0Y2ggc2VyaWVzIEkgc3VibWl0
dGVkLgo+ID4+Cj4gPj4gVGhlIG9yaWdpbmFsIGRldmljZSB0cmVlIHdvcmsgZm9yIHRoZSBSYWR4
YSBDTTUgYW5kIElPIEJvYXJkIHdhcwo+ID4+IGF1dGhvcmVkIGJ5IEpvc2VwaCBLb2d1dC4gSSB0
b29rIG92ZXIgdGhlIHJlc3BvbnNpYmlsaXR5IG9mIGdldHRpbmcgaXQKPiA+PiB1cHN0cmVhbWVk
IHdpdGggaGlzIGFncmVlbWVudC4KPiA+IAo+ID4gSSdsbCBjb25maXJtIHRoaXMuIEkndmUgYmVl
biBpbiBjb21tdW5pY2F0aW9uIHdpdGggTmFva2kuIFRoZXkgbWFkZSBhCj4gPiBsYXJnZSBudW1i
ZXIgb2YgcmV2aXNpb25zIHRvIG15IG9yaWdpbmFsIHBhdGNoIHNlcmllcywgd2hpY2ggSSB0aGlu
awo+ID4gaGF2ZSB0ZWNobmljYWwgbWVyaXQuIEkgc3VnZ2VzdGVkIHRoZXkgc3VibWl0IHRoZSBw
YXRjaGVzIHRoZW1zZWx2ZXMsCj4gPiBhbmQgZ2F2ZSB0aGVtIGV4cGxpY2l0IHBlcm1pc3Npb24g
dG8gYWRkIG15IFNpZ25lZC1vZmYtYnkgYW5kIENDIG1lLgo+ID4gCj4gPiBJIGFzc3VtZSB0aGlz
IHdhcyB0aGUgY29ycmVjdCB3YXkgZm9yIHRoZW0gdG8gY29udGludWUgdGhlIHdvcmsgSQo+ID4g
c3RhcnRlZCwgYnV0IGlmIG5vdCwgcGxlYXNlIGxldCB1cyBrbm93IHRoZSBiZXN0IHdheSB0byBw
cm9jZWVkLgo+IAo+IENhbiBhbnlvbmUgaGVscCB1cz8KCkknbSBub3QgZXhhY3RseSBzdXJlIGhv
dyB0byByZXNvbHZlIHRoZSBjdXJyZW50IHNpdHVhdGlvbiwgYnV0IGZvcgpTaWduZWQtb2ZmLWJ5
IHRhZ3MgdG8gYmUgcHJlc2VudCwgaW4gdGhpcyBjYXNlIHlvdSdkIG5lZWQgdG8gaGF2ZQpDby1k
ZXZlbG9wZWQtYnkgdGFncyBhcyB3ZWxsLCBiZWNhdXNlIHRoZSBmaW5hbCBwYXRjaCB2ZXJzaW9u
cywKd2hpY2ggd291bGQgYmUgc3VibWl0dGVkIGJ5IE5hb2tpLCB3b3VsZCBkaWZmZXIgc2lnbmlm
aWNhbnRseSBmcm9tCnRoZSB2ZXJzaW9ucyB0aGF0IEpvc2VwaCBhY3RpdmVseSB3b3JrZWQgb24s
IGlmIEkgdW5kZXJzdG9vZApldmVyeXRoaW5nIGNvcnJlY3RseS4gIFRob3VnaCwgZm9yIEpvc2Vw
aCdzIFNpZ25lZC1vZmYtYnkgdGFncyB0bwpiZSBpbmNsdWRlZCB0aGVyZSwgaGUgd291bGQgYWxz
byBuZWVkIHRvIHBhcnRpY2lwYXRlIGFjdGl2ZWx5IGluCnRoZSBkZXZlbG9wbWVudCBvZiB0aGUg
ZmluYWwgcGF0Y2ggdmVyc2lvbnMuCgpBbm90aGVyIG9wdGlvbiwgdGVjaG5pY2FsbHkgYSBiaXQg
c2ltcGxlciwgd291bGQgYmUgdG8gaW5jbHVkZSBqdXN0Ck9yaWdpbmFsbHktYnkgdGFncyBmb3Ig
Sm9zZXBoLCB3aGljaCB3b3VsZCBpbmRpY2F0ZSB0aGF0IEpvc2VwaCBnYXZlCnVwIG9uIHRoZSBk
ZXZlbG9wbWVudCBvZiB0aGUgcGF0Y2hlcyBhbmQgaGFuZGVkIHRoZW0gb3ZlciB0byBOYW9raQpm
b3IgZnV0dXJlIGRldmVsb3BtZW50IGFuZCBzdWJtaXNzaW9uIHRvIHRoZSBtYWlsaW5nIGxpc3Rz
LiBUaG91Z2gsCnRoYXQgd291bGQgcmVxdWlyZSBKb3NlcGggdG8gcHVibGljbHkgc3RhdGUgZXhh
Y3RseSB0aGF0LgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
