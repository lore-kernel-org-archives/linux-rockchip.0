Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 151F6C5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 09:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfRqsXTIxcfQzM94AsBMUaIn4otHe2+C8rOoGjR7zkE=; b=V0+WzMmUZktlXd
	cLZ1M1o4ARVzaTw2piNawvbECYlJZ90t8pmcRebfywsMzAhlqjXxsmqocTKtBiGVeeoDQ/zaIf3si
	KSIcwB70hFDwFMqYexiVK6BOPrjm1iv9NxFZiH3+cJKA2UXdabjDsJJaaIhCRvalIvfA6SiaU+VaL
	5PSfPC53Wb62pwCZI9iMR+IH5AeciDMfWo/yXCgYxTWVRLs4F98/phlcTNMrZfacsCZhURLhkuXDU
	0nkxxkUvC3oWdGUuRxvujTEheTKZ4g7d6YqGeSYMmpqlNd+hoS539yFY6BT2PUlnHbC7vZl4rW3dG
	Qj2Fb0ZaCBcJbpMqWl/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOYig-00000003lU5-1DNO;
	Mon, 09 Jun 2025 09:23:06 +0000
Received: from mail-m19731106.qiye.163.com ([220.197.31.106])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOYb3-00000003kD2-0ALs;
	Mon, 09 Jun 2025 09:15:14 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 18005320a;
	Mon, 9 Jun 2025 17:14:59 +0800 (GMT+08:00)
Message-ID: <639cd0b2-08d1-44dc-97a7-bd6bc9f84468@rock-chips.com>
Date: Mon, 9 Jun 2025 17:14:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, robh@kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/3] Fix interrupt log message
To: Hans Zhang <18255117159@163.com>, lpieralisi@kernel.org, kw@linux.com,
 bhelgaas@google.com, heiko@sntech.de, mani@kernel.org
References: <20250607160201.807043-1-18255117159@163.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20250607160201.807043-1-18255117159@163.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk9CSFYZTUofTEpKGk5JHRhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9753f8bc1d09cckunmebd35233698387
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PBw6MDo6KDE8MRFCMRgcSDMK
	Kk0aCkhVSlVKTE9CT01LTktKS0hDVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlPQ083Bg++
DKIM-Signature: a=rsa-sha256;
	b=WTM1v84dbg0ubPuSSxPDivYr6mVBmeHVSpkdFbu/okZs7hP7BWpOn+HCt+xcKr0AzeHeC26Kho6btD6y3NeR6/o66XR5LDK9o6Fny2PPOhAaO5ADmLfpRW4rlbTnJcUO5PF3hXCA7sCbIroNpIjZfu+1kgJ5fgKVtPXfHAymsy0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=UnImHBjEXBYKTlW6N7hHZOLrlwnq3Uv1RsZaYhtprg4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_021513_541968_A0F82E86 
X-CRM114-Status: GOOD (  14.36  )
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

5ZyoIDIwMjUvMDYvMDgg5pif5pyf5pelIDA6MDEsIEhhbnMgWmhhbmcg5YaZ6YGTOgo+IERlYXIg
TWFpbnRhaW5lcnMsCj4gCj4gRGV0YWlsZWQgZGVzY3JpcHRpb25zIG9mIGludGVycnVwdHMgY2Fu
IGJlIHNlZW4gZnJvbSBSSzMzOTkgVFJNIGRvYy4KPiBJIGZvdW5kIHR3byBlcnJvcnMgYW5kIGNs
ZWFuZWQgdXAgdGhlIGRyaXZlciBieSB0aGUgd2F5Lgo+IAo+IFRoaXMgcGF0Y2ggc2VyaWVzIGlt
cHJvdmVzIHRoZSBsb2dnaW5nIGFjY3VyYWN5IGFuZCBjb2RlIGNsZWFubGluZXNzIG9mCj4gdGhl
IFJvY2tjaGlwIFBDSWUgaG9zdCBjb250cm9sbGVyIGRyaXZlcjoKPiAKPiBMb2cgTWVzc2FnZSBD
bGFyaWZpY2F0aW9ucwo+IAo+IFBhdGNoIDEgZml4ZXMgYSBtaXNsZWFkaW5nIGRlYnVnIG1lc3Nh
Z2UgZm9yIHRoZSBQQ0lFX0NPUkVfSU5UX1VDUgo+IGludGVycnVwdCwgcmVwbGFjaW5nIGEgZHVw
bGljYXRlZCAibWFsZm9ybWVkIFRMUCIgbWVzc2FnZSB3aXRoICJVbmV4cGVjdGVkCj4gQ29tcGxl
dGlvbiIgdG8gcmVmbGVjdCB0aGUgYWN0dWFsIGVycm9yIGNvbmRpdGlvbi4KPiAKPiBQYXRjaCAy
IGNvcnJlY3RzIHRoZSB0ZXJtaW5vbG9neSBmb3Igbm9uLWZhdGFsIGVycm9ycywgcmVuYW1pbmcg
Im5vIGZhdGFsCj4gZXJyb3IiIHRvICJub24gZmF0YWwgZXJyb3IgaW50ZXJydXB0IHJlY2VpdmVk
IiB0byBhbGlnbiB3aXRoIFBDSWUgaW50ZXJydXB0Cj4gc2VtYW50aWNzLgo+IAo+IENvZGUgQ2xl
YW51cAo+IAo+IFBhdGNoIDMgcmVtb3ZlcyByZWR1bmRhbnQgaGVhZGVyIGluY2x1ZGVzIChlLmcu
LCB1bnVzZWQgY2xvY2svcmVzZXQKPiBoZWFkZXJzKSB0byBzdHJlYW1saW5lIHRoZSBkcml2ZXIg
YW5kIHJlZHVjZSBidWlsZCBkZXBlbmRlbmNpZXMuCj4gCj4gVGhlc2UgY2hhbmdlcyBlbmhhbmNl
IGRlYnVnIGxvZyByZWxpYWJpbGl0eSwgZWxpbWluYXRlIGFtYmlndWl0eSBmb3IKPiBkZXZlbG9w
ZXJzLgo+IAoKVGhhbmtzIGZvciB5b3VyIHBhdGNoZXMuCgpBY2tlZC1ieTogU2hhd24gTGluIDxz
aGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cgo+IC0tLQo+IENoYW5nZXMgZm9yIHYzOgo+IC0gQWRk
IFJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9yZz4gKE1h
bmkncyBuZXcgZW1haWwgYWRkcmVzcy4pCj4gCj4gQ2hhbmdlcyBmb3IgdjI6Cj4gLSBEcm9wIHBh
dGNoIFt2MSAzLzRdLgo+IC0gVGhlIG90aGVyIHBhdGNoZXMgaGF2ZSBub3QgYmVlbiBtb2RpZmll
ZC4KPiAtLS0KPiAKPiBIYW5zIFpoYW5nICgzKToKPiAgICBQQ0k6IHJvY2tjaGlwLWhvc3Q6IEZp
eCAiVW5leHBlY3RlZCBDb21wbGV0aW9uIiBsb2cgbWVzc2FnZQo+ICAgIFBDSTogcm9ja2NoaXAt
aG9zdDogQ29ycmVjdCBub24tZmF0YWwgZXJyb3IgbG9nIG1lc3NhZ2UKPiAgICBQQ0k6IHJvY2tj
aGlwLWhvc3Q6IFJlbW92ZSB1bnVzZWQgaGVhZGVyIGluY2x1ZGVzCj4gCj4gICBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIHwgMTMgKystLS0tLS0tLS0tLQo+ICAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gCj4g
YmFzZS1jb21taXQ6IGVjNzcxNGU0OTQ3OTA5MTkwZmZiMzA0MWEwMzMxMWE5NzUzNTBmZTAKPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
