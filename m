Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF8E6CF258E
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 07:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Date:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PsChRTd6IngVwQJKB7GXHjiBkOTyFsesnoGIJKrUjGU=; b=jfY9sDffXNR3lEjdZ3apCJ8Y/K
	LRtjBleCgRdBpC8p2zEfjBeXNwHJy2AQ1RF4GdKZpzd08wvDQHE9Ict64AiB19zmByY5+HhEGQrB/
	KXxclHVJfWXI9bRsDrSbCFf4G0h/pLczw2A0g+WeCfKs+Yn7vavHniMcNR2kn7CwFqrxlKuUNMiSM
	ePV6n0/RPCBIDQM5vPrd6hXYajYb9cgEVPj0pXcxdO8bYg6WlLh5YRTMKaqPsU8ZAJ9sMqxYa7D1Y
	b3QK0FMSapfGBnKzVxtcSCtZ16e30sAyGoiG9J+Ztco8KUXxWMcDDwkeA+wcVqoVIR9xhSGp+gJ/1
	x7ZALRog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLcZW-00000002hHv-1g2B;
	Wed, 19 Nov 2025 07:25:46 +0000
Received: from dragonfly.birch.relay.mailchannels.net ([23.83.209.51])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLcZS-00000002hG9-3T4W;
	Wed, 19 Nov 2025 07:25:44 +0000
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id BBC99561A1A;
	Wed, 19 Nov 2025 07:25:41 +0000 (UTC)
Received: from de-fra-smtpout2.hostinger.io (100-99-165-60.trex-nlb.outbound.svc.cluster.local [100.99.165.60])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 505CF561D5C;
	Wed, 19 Nov 2025 07:25:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763537141;
	b=SXZOMk+mLUWVr9hiGJDiD5WPGgaLnW2Korsd+tFcb4IodW4xwQAplgaRrEGjT+frbzFgV5
	eEXrpkrjoA/ggggVfMxotbmHhT8Ds5xT2plkORDQRXdrzueCT8TjPcvaoAkl/k4cbiVRsy
	X0qqGV0kzKiPSDOqjFKnmTfJvSoR0wtESjat93YZds/PKosoRxFuKs3RdYSodNgzVNtRSz
	AWO1bUytSZoz0HeG9MlhHCYmXRBnI+kxmPF/34ZAkYV3qw3G+lp7561BlT6AbUL08ZVYp0
	6Ywn5FOQzwggp2jkD994lV2v3twFE9kMun7OjxCA1nx2j/KjqZ0zYdgQR8/2eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763537141;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=49vW6mKGN2/Z4O8Jgy0czTepb6Rq/WdAgbHJY2d7Qmw=;
	b=ChnunEDyH1e6JnKFkJstIGNayHR9ranHtJxPpB8xUSX1MG3eihu1U3U2qcL7BsFzChghDi
	GZo80jblETorS3Tks5y1D1mbriTh+YAk9lYoqNVJCh4bPC/XaMiENX+8JEes8D0Bd1DT81
	a/ZIbXlwEw2el2vUIg+qkkKspqPLT36xuiklre+etciDhU0tCcBHyogEaiTwSAO+1UPjL4
	PN90L3qHjn8xMD359TmGhc5yIy9n2uMUlJSc4EwYwQdGhaOv/L83uGD/DHLH+xTBdrahV8
	ON9KaDNK35zNKxML2EwThPWK9buFrZuigbCRDwFK6Y7a5K0TPtEiQ1mstwuq6g==
ARC-Authentication-Results: i=1;
	rspamd-5ffd6989c9-nm4jb;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Language-Wiry: 07163cef468b89d4_1763537141244_1147105000
X-MC-Loop-Signature: 1763537141244:3022879499
X-MC-Ingress-Time: 1763537141243
Received: from de-fra-smtpout2.hostinger.io (de-fra-smtpout2.hostinger.io
 [148.222.55.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.99.165.60 (trex/7.1.3);
	Wed, 19 Nov 2025 07:25:41 +0000
Received: from [IPV6:2001:861:4450:d360:c546:29e2:335f:d5df] (unknown [IPv6:2001:861:4450:d360:c546:29e2:335f:d5df])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4dBCgj1Z8wz3wgc;
	Wed, 19 Nov 2025 07:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763537137;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=49vW6mKGN2/Z4O8Jgy0czTepb6Rq/WdAgbHJY2d7Qmw=;
	b=Mi5f0AimXbv/QvHajYw+l7A1RJRkGQqGcd2/DiC8aShJi8qiJNe4TefBAOGRw3ih6vztuf
	tEGFR7JTWLtA3A7WhQMxb730rIKNBElsqvWHd6GyvR7B9cS8eDNJ254+f3Fe0H4jYwD6/Q
	dFaEC7tg3PbeuBuwrbw4FOlrIBxxLVhXf38zZhlMUrww8Yv3ByQWkqNEhx/CXK5CNDVQqK
	svcu/IKEAOCwE+mISeTOOnX8vH9dJX3sUfgVRYK9Xezw8zdpIY+fR4uQv7gA2BCrpdZFSf
	odaxs8y1PoaSczSOQjZn2sH7Bm29+jVGVR7oGEftK8/3tL25K0M76rjf7XYz+g==
Message-ID: <8fce39e0-62f7-4a79-83b8-e3a63af10e2f@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Asus Tinker Board
 3 and 3S
To: Dragan Simic <dsimic@manjaro.org>
References: <e4cd11d0-463c-e707-5110-6b92899b1ba3@manjaro.org>
 <0c224662-b3c2-4075-8b68-c0ae27421ba8@rootcommit.com>
 <3c96ee6b-dca7-1a0a-792b-f8c165ec997d@manjaro.org>
Content-Language: en-US, fr
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <3c96ee6b-dca7-1a0a-792b-f8c165ec997d@manjaro.org>
Date: Wed, 19 Nov 2025 07:25:37 +0000 (UTC)
X-CM-Envelope: MS4xfERUWHQWiMV8pLBkWbvvGhDn9+Rj1a59Ys05xPrmL3MRHIdl0Keb354f8g0b9NFTSE98al/Vgkvrj5gtwff0Wo0Xy2IGWmnFICHumSLoUoPvQtLRxbCP 8CY5VmGNNwUvGhNwgsQV94nuqa5wka+DoGhQ7orXw/R1YAj+R8kZkkGmDgVpnjm0GFOC/XhKuoqZgMIGUArZqt4Td2JMX507m6+jGTJu/hOY6woCduzSl0iY jvd9pbqBSSV6iMOapzyt+InGpHlcQkPdX/R30HifuJqNSLC6Pd8UJUygpOF+MgJAd/3kRwwcs63ICRlsac+wUCtIMIHPoGQ69R3KqoT/iMDPXIVLuotbFOJP woT/3zmVwaEwrOQCUA57FFHaTgxotMRGkkIIFZSqclvJ+SVIsi0dTMdL30VU/F6tS3lCWjpq1bNMpzVgI66/lNW8RhfhU6BdFP2W3eFX9z3Hu9HKfqt7ODlW t4e6s67oxkhoV/ruvR8K8y28qB01isWAkaxRiMvudHEZZiAkqxjQ8/6Os0yeFRogmKyoziCEeLBk5rXLvmHH+aleyFywkWfaUfdvZVuaAfEYbVUSLHn+etbV 3l6FOqI3eJ9iTdLkp4E635cvpKcn+v0awT/iXFMGiynv0c/85H6hvpOh7iVjWoJTH8k=
X-CM-Analysis: v=2.4 cv=Ceda56rl c=1 sm=1 tr=0 ts=691d70f1 a=ZT5r2a33aVEFtXz168a3Sg==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=ZwQsaBEdSMyVPtTqx_cA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_232543_162533_11B6043F 
X-CRM114-Status: GOOD (  12.66  )
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

SGkgRHJhZ2FuCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3cyBpbiBidXN5IHRpbWVzIQoKPiBUaGlz
IHNob3VsZCBsZXQgdXMga2VlcCB0aGUgImFzdXMscmszNTY2LXRpbmtlci1ib2FyZC0zIiBjb21w
YXRpYmxlCj4gaW4gdGhlIG5ldyByazM1NjYtdGlua2VyLWJvYXJkLTNzLmR0cyBib2FyZCBkdHMg
d2hpbGUgc2F0aXNmeWluZyB0aGUKPiB2YWxpZGF0aW9uIHByb3Blcmx5Ogo+Cj4gICAgLSBkZXNj
cmlwdGlvbjogQXN1cyBUaW5rZXIgQm9hcmQgMy8zUwo+ICAgICAgaXRlbXM6Cj4gICAgICAtIGVu
dW06Cj4gICAgICAgICAgLSBhc3VzLHJrMzU2Ni10aW5rZXItYm9hcmQtM3MKPiAgICAgIC0gY29u
c3Q6IGFzdXMscmszNTY2LXRpbmtlci1ib2FyZC0zCj4gICAgICAtIGNvbnN0OiByb2NrY2hpcCxy
azM1NjYKPgo+IEknbSBxdWl0ZSBidXN5IGF0IHRoZSBtb21lbnQsIGhlbmNlIG15IGRlbGF5ZWQg
cmVzcG9uc2UsIGFuZCBJIGFsc28KPiBhcG9sb2dpemUgZm9yIG5vdCBydW5uaW5nIHRoZSBjaGVj
a3Mgb24gdGhlIGFib3ZlLXByb3Bvc2VkIHNvbHV0aW9uLAo+IGJ1dCBJIHRoaW5rIGl0IHNob3Vs
ZCB3b3JrIGFzIGV4cGVjdGVkLgoKSSBhY3R1YWxseSBhbHJlYWR5IHRyaWVkIHRoaXMsIGJ1dCBp
dCBkb2Vzbid0IHBhc3MgIm1ha2UgZHRic19jaGVjayI6CgphcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2Ni10aW5rZXItYm9hcmQtMy5kdGI6IC8gCihhc3VzLHJrMzU2Ni10aW5rZXIt
Ym9hcmQtMyk6IGNvbXBhdGlibGU6ICdvbmVPZicgY29uZGl0aW9uYWwgZmFpbGVkLCAKb25lIG11
c3QgYmUgZml4ZWQ6CiDCoCDCoCBbJ2FzdXMscmszNTY2LXRpbmtlci1ib2FyZC0zJywgJ3JvY2tj
aGlwLHJrMzU2NiddIGlzIHRvbyBzaG9ydAoKVGhlICJlbnVtIiBzdGF0ZW1lbnQgc2VlbXMgdG8g
bWVhbiB0aGF0IHRoZXJlIGlzIGF0IGxlYXN0IG9uZSBvZiB0aGUgCml0ZW1zLCB3aGljaCBpcyBu
b3QgdGhlIGNhc2UgZm9yIHJrMzU2Ni10aW5rZXItYm9hcmQtMy5kdHMgdGhhdCBkb2Vzbid0IApo
YXZlIGl0LgoKU28sIG15IFYzIHNlZW1zIGxpa2UgdGhlIHdheSB0byBnbyBpZiB3ZSBkb24ndCB3
YW50IHRvIGR1cGxpY2F0ZSBlbnRyaWVzIAppbiByb2NrY2hpcC55YW1sLgpDaGVlcnMKTWljaGFl
bC4KCi0tIApNaWNoYWVsIE9wZGVuYWNrZXIKUm9vdCBDb21taXQKWW9jdG8gUHJvamVjdCBhbmQg
T3BlbkVtYmVkZGVkIFRyYWluaW5nIGNvdXJzZSAtIExlYXJuIGJ5IGRvaW5nOgpodHRwczovL3Jv
b3Rjb21taXQuY29tL3RyYWluaW5nL3lvY3RvLwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
