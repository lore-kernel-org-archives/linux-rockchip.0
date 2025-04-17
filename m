Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCA3AC369C9
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6PP7klVizqPYu2fOrqdWL8gqCJ/VFgptZtkdhN329Ro=; b=caUx3OxbU09p2Z
	bgDRyaFXSjoSfYLVlPLpgnhmbbSzTNgv38qTFCEHHfLpN51IAcgkpeiutuaXUeSv35XGTTqtxZu75
	/fLQsf+SBGDvNZYKZP3FNdrUvqc/G1LGGVcTszfyUMCPPUl285H0Puw5m+2naKOeaXg+6KOBwZaYf
	tmeGJFaZHDOiBcKRg/gVmFpBHt6M1Wsg7f8mY6u8XRKluQNPRIjbUMKYFgEdUvv90fmpYA1cjX9P+
	CtVGuQfIkBwyYQ2AJz9a+p3Tkdvp7A9nXr3699/PYgkyq9zuOFmoyfEs/Z1wNV3tmxMJl5WrBLvKW
	coXxTQkJ6cxQJQDaUogQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5RNa-0000000DYJA-30dJ;
	Thu, 17 Apr 2025 15:42:18 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5QYO-0000000DNlC-1XCl
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 14:49:25 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1744901360; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LSA4XUad9HjJCzKl0wWGtil+yNnca6JHHXClQCjTn53PXnZKCtj487H9AvZE24+44kYzAP8GqLFXR/0w3iLDvy5om6JGZcOsABiNV+EnM8mXCUP/n1o92IBWriIxvIUsT2z9Yumf5/LuRRtzAzoxVoO84kAfsuFhEF4nz4FW/bw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1744901360; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=efU53WnCdbsY58dh84Ulpb0jetMQ/EeX3XIf2R02SAM=; 
	b=Ff3cL9ZFXVPbQsV8514XmQa64YEIF3QzEpoL+fmMM73ppwL5hmvwERj0ysNom3GmLSFWd/3qIO5zIOaf1BMNu3WbHj7vnjMqZSejp4sBKXZwupIchJe4ptbOQYnRF8HGDi+yfW6FgiPAc/mStJ+AZDrZBE7SWGjeY3NDevM4Tic=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1744901360;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=efU53WnCdbsY58dh84Ulpb0jetMQ/EeX3XIf2R02SAM=;
	b=Phfou6QycRe1GtJOHKoq1P0jx74qH0wBurp0HGdN7h4IPhljdMju7cgBYrcLzv9N
	N9h15YvDxoQgGQizOlfmZDjy+SXL6tM0GDicxriAoGx5RdXox12gfoYE1C0BvCNjNPi
	GNRfz1eu57ryIJ+azTytgbceRolkfkP86+0xQW3U=
Received: by mx.zohomail.com with SMTPS id 1744901358607467.10631715253476;
	Thu, 17 Apr 2025 07:49:18 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Guenter Roeck <linux@roeck-us.net>, Bjorn Helgaas <bhelgaas@google.com>,
 Ilpo =?UTF-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ilpo =?UTF-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Cc: Igor Mammedov <imammedo@redhat.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 =?UTF-8?B?TWljaGHFgg==?= Winiarski <michal.winiarski@intel.com>,
 linux-rockchip@lists.infradead.org,
 =?UTF-8?B?T25kxZllag==?= Jirman <megi@xff.cz>,
 Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH 1/1] PCI: Restore assigned resources fully after release
Date: Thu, 17 Apr 2025 16:49:13 +0200
Message-ID: <3578030.5fSG56mABF@workhorse>
In-Reply-To: <20250403093137.1481-1-ilpo.jarvinen@linux.intel.com>
References: <20250403093137.1481-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_074924_476629_A65BBD77 
X-CRM114-Status: GOOD (  14.33  )
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

T24gVGh1cnNkYXksIDMgQXByaWwgMjAyNSAxMTozMTozNyBDZW50cmFsIEV1cm9wZWFuIFN1bW1l
ciBUaW1lIElscG8gSsOkcnZpbmVuIHdyb3RlOgo+IFBDSSByZXNvdXJjZSBmaXR0aW5nIGNvZGUg
aW4gX19hc3NpZ25fcmVzb3VyY2VzX3NvcnRlZCgpIHJ1bnMgaW4KPiBtdWx0aXBsZSBzdGVwcy4g
QSByZXNvdXJjZSB0aGF0IHdhcyBzdWNjZXNzZnVsbHkgYXNzaWduZWQgbWF5IGhhdmUgdG8KPiBi
ZSByZWxlYXNlZCBiZWZvcmUgdGhlIG5leHQgc3RlcCBhdHRlbXB0cyBhc3NpZ25tZW50IGFnYWlu
LiBUaGUKPiBhc3NpZ24rcmVsZWFzZSBjeWNsZSBpcyBkZXN0cnVjdGl2ZSB0byBhIHN0YXJ0LWFs
aWduZWQgc3RydWN0IHJlc291cmNlCj4gKGJyaWRnZSB3aW5kb3cgb3IgSU9WIHJlc291cmNlKSBi
ZWNhdXNlIHRoZSBzdGFydCBmaWVsZCBpcyBvdmVyd3JpdHRlbgo+IHdpdGggdGhlIHJlYWwgYWRk
cmVzcyB3aGVuIHRoZSByZXNvdXJjZSBnb3QgYXNzaWduZWQuCj4gCj4gUHJvcGVybHkgcmVzdG9y
ZSB0aGUgcmVzb3VyY2UgYWZ0ZXIgcmVsZWFzaW5nIGl0LiBUaGUgc3RhcnQsIGVuZCwgYW5kCj4g
ZmxhZ3MgZmllbGRzIG11c3QgYmUgc3RvcmVkIGludG8gdGhlIHJlbGF0ZWQgc3RydWN0IHBjaV9k
ZXZfcmVzb3VyY2UgaW4KPiBvcmRlciB0byBiZSBhYmxlIHRvIHJlc3RvcmUgdGhlIHJlc291cmNl
IHRvIGl0cyBvcmlnaW5hbCBzdGF0ZS4KPiAKPiBSZXBvcnRlZC1ieTogR3VlbnRlciBSb2VjayA8
bGludXhAcm9lY2stdXMubmV0Pgo+IEZpeGVzOiA5NjMzNmVjNzAyNjQgKCJQQ0k6IFBlcmZvcm0g
cmVzZXRfcmVzb3VyY2UoKSBhbmQgYnVpbGQgZmFpbCBsaXN0IGluIHN5bmMiKQo+IFNpZ25lZC1v
ZmYtYnk6IElscG8gSsOkcnZpbmVuIDxpbHBvLmphcnZpbmVuQGxpbnV4LmludGVsLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9wY2kvc2V0dXAtYnVzLmMgfCA0ICsrKysKPiAgMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKQo+IAoKK0NjOiBsaW51eC1yb2NrY2hpcAoKVGVzdGVkLWJ5OiBOaWNv
bGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoKVGhpcyBm
aXhlcyBhIHJlZ3Jlc3Npb24gb24gdGhlIFJLMzU4OCB0aGF0IEkgcmFuIGludG8gd2l0aCB2Ni4x
NS1yYzw9Mi4KClNwZWNpZmljYWxseSwgdGhlIFBDSWUzIGNvbnRyb2xsZXIgd2lsbCBmYWlsIHRv
IG1hcCB0aGUgYWRkcmVzcyBzcGFjZQpvZiBhCiAgTm9uLVZvbGF0aWxlIG1lbW9yeSBjb250cm9s
bGVyOiBLSU9YSUEgQ29ycG9yYXRpb24gTlZNZSBTU0QgKHJldiAwMSkKICAocHJvZy1pZiAwMiBb
TlZNIEV4cHJlc3NdKQoKZHJpdmUgb24gbW9zdCwgYnV0IG5vdCBhbGwsIGJvb3RzLCBkZXBlbmRp
bmcgb24gdGhlIG9yZGVyIGluaXRpYWxpc2F0aW9uCmhhcHBlbnMsIGl0IHNlZW1zLiBBIGRpZmZl
cmVudCBkcml2ZSBJIHRlc3RlZCBzZWVtcyB0byB3b3JrIGZpbmUsIHNvIG5vdApvbmx5IGRvZXMg
dGhlIHJlZ3Jlc3Npb24gb25seSByZWFyIGl0cyBoZWFkIGJhc2VkIG9uIGJvb3QgdGltaW5nLCBi
dXQKYWxzbyBiYXNlZCBvbiB0aGUgZGV2aWNlIGF0dGFjaGVkIHRvIHRoZSBQQ0llMyBjb250cm9s
bGVyLiBCaXNlY3Rpbmcgd2FzCmEgYml0IG9mIGEgdG9ydHVyZWQgYWZmYWlyLCBhcyB0aGUgYmFk
IGNvbW1pdCA5NjMzNmVjNzAyNjQgZG9lc24ndCBzZWVtCnRvIGJ1aWxkIGZvciBtZSwgc28gSSBo
YWQgdG8gYGdpdCBiaXNlY3Qgc2tpcGAgaXQuCgpUaGUgc3BlY2lmaWMgcHJvYmxlbWF0aWMgYmVo
YXZpb3VyIGZpeGVkIGJ5IHRoaXMgcGF0Y2ggaXMgdGhhdCB3ZSBnZXQ6CgogIHBjaSAwMDAwOjAw
OjAwLjA6IGJyaWRnZSB3aW5kb3cgW21lbSBzaXplIDB4MDAxMDAwMDBdOiBjYW4ndCBhc3NpZ247
IGJvZ3VzIGFsaWdubWVudAoKSXQgc291bmRzIGxpa2UgT25kxZllaiBKaXJtYW4gcmFuIGludG8g
dGhlIHNhbWUgcmVncmVzc2lvbiwgc2luY2UgdGhlCmRldmljZXMgaGUgbWVudGlvbmVkIChPcmFu
Z2UgUGkgNSsgYW5kIFF1YXJ0elBybzY0KSBib3RoIHVzZSB0aGUKUm9ja2NoaXAgUkszNTg4IFNv
Qy4KCktpbmQgcmVnYXJkcywKTmljb2xhcyBGcmF0dGFyb2xpCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
