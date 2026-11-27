Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A000B606A33D
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 07:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ve4srCOO;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=koyXUugt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nbGIsNDb6huXwzb4ROLFA2wxZdcKMOPtpYzDnNrCehU=; b=ve4srCOOMjPnr+MWlFXM5ynhZ6
	hmYEvDa7/3P8mWuH+nqfNUNE24KOzMgeSTflZdpzCK1gODPMZgGgggPTRoh0liguqxElGj5g2lKVm
	bVLVQxwANeOWRRkyuGu95tfVKga5Af2RKULvl1sq/qyA+jcFkiIG15APL6j3EEJVjpBwNKYR4zbHz
	bvh0+xXQoa2eBP44DbrX46eUCueEoC1mM6rddwVW25tJNzOA43BxsjO9t/aT1paMTzO1vRtgamV7J
	NiL5IPa05e3nUsSdTVn8glQQoLQvxGtjgSBH3f76etZAnZ2VjIWqXrhHCNyGM0TFp+Gh+m7VlsGbo
	EsAxMdaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqDC-0000000F6Nh-3bG4;
	Fri, 27 Nov 2026 07:17:38 +0000
Received: from sender6-pp-f112.zoho.com ([165.173.180.112])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqDA-0000000F6N5-0Ita;
	Fri, 27 Nov 2026 07:17:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1795763841; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=S7piGxenIQRfIfFugIGmND7h2L/Q/ME+HW19qKb/k3vFGqsNkUA2uhFERE11LTdtKlsdTzcldqq+JTOvGUv3tmiZnSf54nhcy1zfGQGWCTt39r6uaGZvlYblmI0KvYSLE7+TTqWkLAT38kvfURzAbwTnjnelzcmX+4jD4VmHIAg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1795763841; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=QThccq8aVO4qT5svmvutaMycEXGwprtb+sQAgRodxfE=; 
	b=KmyVbxEnXtCtn+yPS2llXrCywoIg105QHwbYM+iFtu+T5zWCqLqxi5Dq577Lw6a8uOFc99OZgzFU58ZdmXncOx11j45sgXOLudxjUE0pDS9Y8mO9L5JPgCOMwtYgW8VCwgPjpwS96qpF17uCl0BcU440mfOafAs4k5h+Tbkvb+s=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: a=rsa-sha256; b=koyXUugtIGFaI3oRPdQ/lKnH8TJmMOlJ0tOcQ61edgXXMngNR8tfcnhtJf6uyuNTu0oth5FYuwDiU+gd8LK7ROXtELehd6aFL/WDnnEBP7z5A4W67dwD7fkaRffewTXTiRITRrhCBh1b93JrLYkABfawEZyMRtcyNcsObqjWzrE=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=QThccq8aVO4qT5svmvutaMycEXGwprtb+sQAgRodxfE=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1795763839368810.0143316630227;
	Thu, 26 Nov 2026 23:17:19 -0800 (PST)
Message-ID: <d83e09c8-cfac-46cd-83bb-d2ad751fa6fe@collabora.com>
Date: Fri, 27 Nov 2026 08:17:12 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/9] phy: rockchip-samsung-dcphy: Add the MIPI D-PHY
 receiver
To: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Quentin Schulz <quentin.schulz@cherry.de>, Sashiko <sashiko-bot@kernel.org>
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
 <CAPwA33K7f2EbtH8rqihnxB8RkB1PzJTmDyGJ39ojROuTYwK0Dw@mail.gmail.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <CAPwA33K7f2EbtH8rqihnxB8RkB1PzJTmDyGJ39ojROuTYwK0Dw@mail.gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_231736_173618_6457B52B 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSmFzb24sCgpPbiAxMS8yNy8yNiAwNzoyNCwg5qWK5pm65oiQIHdyb3RlOgo+IEhpIGFsbCwK
PiAKPiBNaWNoYWVsLCBJIGtlcHQgeW91ciBSZXZpZXdlZC1ieSBmcm9tIHY2IG9uIDYvOSwgOC85
IGFuZCA5LzksIGFzIHRoZQo+IHY3IGNoYW5nZXMgdGhlcmUgZm9sbG93IHlvdXIgc3VnZ2VzdGlv
bnMuIEFyZSB5b3UgZmluZSB3aXRoIGtlZXBpbmcgaXQ/CgpPaCB5ZXMsIGFic29sdXRlbHkuIEZv
ciB0aGUgd2hvbGUgc2VyaWVzOgoKUmV2aWV3ZWQtYnk6IE1pY2hhZWwgUmllc2NoIDxtaWNoYWVs
LnJpZXNjaEBjb2xsYWJvcmEuY29tPgoKPiBGb3IgdjggSSBvbmx5IHBsYW4gdG8gZHJvcCB0aGUg
VGVzdGVkLWJ5IHRhZ3MgZnJvbSAxLzkgYW5kIDIvOS4KPiBQbGVhc2UgbGV0IG1lIGtub3cgaWYg
YW55dGhpbmcgZWxzZSBzaG91bGQgY2hhbmdlIGJlZm9yZSBJIHNlbmQgaXQuCgpQbGVhc2UgZ28g
YWhlYWQgd2l0aCB2OCEKCj4gCj4gVGhhbmtzLAo+IEphc29uCgpUaGFua3MgYW5kIGJlc3QgcmVn
YXJkcywKTWljaGFlbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
