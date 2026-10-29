Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7677606A335
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 00:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4KmyNmlY;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=HCG9R6E+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yrznP2cEskZiKoqcM6pOn7cc40NZruZC3wKPHu4LxRU=; b=4KmyNmlYUaEbNBBJs23jcV+dJL
	q6L78kBnXJ47dfWtWrpqSLN5zgu5mF/BSQ+AMlJ0hLem+APNfOuN9hiIQJRLoxdYPlNhm+xztqJbG
	NKpNYTR5QG7kogpkTljSgOduwXtI2Tzr+j2oMYN2tatK5T/0n9ap5CIJhrYFn/uFVltHC0CA2z3vG
	LT33YoHLTSqkQ1Wv4BqscQR9/rZWdDWbj+OYYMbA0UOXjEkolqZbv7UQ8p27eEY4Zn9y6sv4X3BNI
	22NR59aabYE/CxX5X5cAvtSph1/JZAUAIGFaaLwnTLwWcH2JzHWWFnkdlwU7cfjN6NHb8LsEQPUEd
	Tlx3YmHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMEBi-000000086OD-0NbJ;
	Thu, 29 Oct 2026 00:40:14 +0000
Received: from mail-m83158.xmail.ntesmail.com ([156.224.83.158])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMEBe-000000086Mz-0V7a;
	Thu, 29 Oct 2026 00:40:12 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 52b624e00;
	Thu, 29 Oct 2026 08:40:03 +0800 (GMT+08:00)
Message-ID: <9d52d66f-7eaf-4fcc-b445-751e555707d7@rock-chips.com>
Date: Thu, 29 Oct 2026 08:39:59 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, manivannan.sadhasivam@oss.qualcomm.com,
 bhelgaas@google.com, robh@kernel.org, heiko@sntech.de, dlemoal@kernel.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 iav@iav.lv
Subject: Re: [PATCH v3] PCI: rockchip: Don't lengthen PERST# when power is
 already valid
To: =?UTF-8?Q?Enrique_Hern=C3=A1ndez_Bello?= <ehbello@gmail.com>
References: <20261028005603.2399220-1-ehbello@gmail.com>
 <cf541723-eb4c-4ba6-92c5-33baafc20e7c@rock-chips.com>
 <20261028015923.2436122-1-ehbello@gmail.com>
 <95aeecc0-2794-4cc6-a635-5c042afc1405@rock-chips.com>
 <20261028171122.3422629-1-ehbello@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261028171122.3422629-1-ehbello@gmail.com>
X-HM-Tid: 0aa18519806403a4kunm9f3b40bdfe8d1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZHR9OVhpNThodSx5CSxlJS1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=HCG9R6E+IaJm1bNyBjRQaYBRGMVM3yRbMJQQx+50D1clXehcLwi6007xiUERJWtuPkNhcUBQsOv+CFjqhyrLLf8bsEKukzuUpiNFhtpZ+yu9vjatBpjX16bWUlkWx9pKR/m6EZHhybj/K61IhWICAPvfZM3vk4i3hKoH6DypNxA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=uBkoYVVkTY7EAIi/mmiI2JHj5K3iCMaezc8HVdReC/E=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_174010_753906_41BD26EA 
X-CRM114-Status: GOOD (  22.83  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYvMTAvMjkg5pif5pyf5ZubIDE6MTEsIEVucmlxdWUgSGVybsOhbmRleiBCZWxsbyDl
hpnpgZM6Cj4gT24gV2VkLCAyOCBPY3QgMjAyNiAwMjoyMToxNCArMDAwMCwgU2hhd24gTGluIHdy
b3RlOgo+IAo+PiBXYXMgaXQgcG9zc2libGUgdG8gYWRkIGEgRFQgcHJvcGVydHkgZm9yIGNvbmZp
Z3VyYWJsZSBkZWxheT8gSSBjYW1lCj4+IGFjcm9zcyBzZXZlcmFsIEVQcyBuZWVkIHF1aXRlIGEg
bG9uZ2VyIHdhaXQgdGltZSwgc28gYWRkIGl0IGluIHRoZQo+PiB2ZW5kb3IgdHJlZSBmb3IgZHdj
LWJhc2VkIElQWzFdLiBUaGF0IGNvdWxkIGJlIGFwcGxpZWQgaGVyZSB0byBzbG92ZQo+PiB5b3Vy
IGNhc2VzIGFuZCBvdGhlcnMnLCBhbmQgbWlnaHQgYXZvaWQgcmVncmVzc2lvbi4KPj4KPj4gWzFd
Cj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwvYmxvYi9kZXZlbG9w
LTYuMTIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jI0w4NjUK
PiAKPiBUaGFua3MgLS0gdGhhdCBpcyBhIGJldHRlciBzaGFwZSB0aGFuIG1pbmUsIGFuZCBJIHdp
bGwgZG8gaXQuCj4gCj4gSSB3aWxsIG1pcnJvciB0aGUgdmVuZG9yIGRyaXZlcjogcm9ja2NoaXAs
cGVyc3QtaW5hY3RpdmUtbXMgZm9yIHRoZSBwdWxzZSwgYW5kCj4gcm9ja2NoaXAsczJyLXBlcnN0
LWluYWN0aXZlLW1zIGZvciB0aGUgcmVzdW1lIHBhdGgsIHNpbmNlIHRoZSB0d28gcGF0aHMgd2Fu
dAo+IGRpZmZlcmVudCB2YWx1ZXMgaGVyZSBhcyB3ZWxsLgo+IAo+IE9uZSB0aGluZyBJIHdvdWxk
IHJhdGhlciBhc2sgdGhhbiBndWVzczogc2hvdWxkIHRoZSBkZWZhdWx0IHN0YXkgYXQKPiBQQ0lF
X1RfUFZQRVJMX01TLCB3aXRoIGFmZmVjdGVkIGJvYXJkcyBzZXR0aW5nIHRoZSBwcm9wZXJ0eSwg
b3Igc2hvdWxkIHRoZQo+IGRlZmF1bHQgYmUgdGhlIHNwZWMgbWluaW11bSwgd2l0aCB0aGUgcHJv
cGVydHkgdGhlcmUgZm9yIGVuZHBvaW50cyB0aGF0IG5lZWQKPiBsb25nZXI/Cj4gCgogIEknZCBz
dWdnZXN0IHRoZSBhZmZlY3RlZCBib2FyZHMgdG8gc2V0IGl0IHZpYSBEVC4KCj4gV2hhdCBtYWtl
cyBtZSBhc2sgaXMgd2hlcmUgVF9QVlBFUkwgaXMgbWVhc3VyZWQgZnJvbS4gSXQgcnVucyBmcm9t
IHBvd2VyCj4gc3RhYmxlIHRvIFBFUlNUIyBpbmFjdGl2ZSwgc28gb24gYSBib2FyZCB3aG9zZSBz
bG90IHJhaWxzIGFyZSByZWd1bGF0b3ItCj4gYWx3YXlzLW9uIGl0IGlzIGFscmVhZHkgc2F0aXNm
aWVkIHNlY29uZHMgYmVmb3JlIHRoZSBkcml2ZXIgdG91Y2hlcyB0aGUKPiBHUElPLCBhbmQgdGhl
IDEwMCBtcyB0aGVuIG9ubHkgd2lkZW5zIHRoZSBwdWxzZS4gVGhlIG9uZSBwdWxzZS13aWR0aCBm
bG9vcgo+IHRoZSBzcGVjIGdpdmVzIGlzIFRfUEVSU1QsIDEwMCB1cy4KPiAKPiBPbiBteSBib2Fy
ZCB0aGF0IGRpZmZlcmVuY2UgZGVjaWRlcyB3aGV0aGVyIHRoZSBKTUI1ODUgYW5zd2VycyBjb25m
aWcgcmVhZHMgYXQKPiBhbGw6IDAgb2YgNSBib290cyB3aXRoIGEgMTAwIG1zIHB1bHNlLCA1IG9m
IDUgd2l0aCBhIHNob3J0IG9uZSwgd2l0aCB0aGUKPiBwb3dlci1zZXR0bGluZyB0aW1lIGhlbGQg
Y29uc3RhbnQgYWNyb3NzIGJvdGguCj4gCj4gS2VlcGluZyB0aGUgY3VycmVudCBkZWZhdWx0IGlz
IHRoZSBzYWZlciBjaGFuZ2UgYW5kIEkgYW0gaGFwcHkgdG8gZG8gdGhhdC4gSQo+IHdvdWxkIGp1
c3QgcmF0aGVyIHdlIGRpZCBpdCBrbm93aW5nbHksIGluc3RlYWQgb2YgY2FycnlpbmcgYSBudW1i
ZXIgdGhhdCB3YXMKPiBvbmx5IGV2ZXIgcmlnaHQgZm9yIGJvYXJkcyB3aGljaCBwb3dlciB0aGUg
c2xvdCBhdCB0aGUgbW9tZW50IHRoZXkgYXNzZXJ0Cj4gUEVSU1QjLgo+IAo+IFNlY29uZGFyeSBx
dWVzdGlvbjogZG8geW91IHdhbnQgdGhlIHZlbmRvci1wcmVmaXhlZCBuYW1lcywgb3Igd291bGQg
dGhlIERUCj4gYmluZGluZyBtYWludGFpbmVycyBwcmVmZXIgc29tZXRoaW5nIGdlbmVyaWMsIGdp
dmVuIHRoZSB0aW1pbmcgY29tZXMgZnJvbSB0aGUKPiBDRU0gc3BlYyByYXRoZXIgdGhhbiBmcm9t
IFJvY2tjaGlwPwo+IAoKSSB0aGluayB0aGlzIGtpbmQgb2Ygc2V0dGluZ3Mgc2hvdWxkIGtlZXAg
dmVuZG9yIHByZWZpeCwgZG9jdW1lbnRlZCBpbgp2ZW5kb3IgZHJpdmVyJ3MgZHQtYmluZGluZywg
dW5sZXNzIG90aGVyIGRyaXZlcnMgd291bGQgbGlrZSB0byBzaGFyZQp0aGlzIHdoaWNoIEknbSBu
b3Qgc3VyZSBub3cuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
