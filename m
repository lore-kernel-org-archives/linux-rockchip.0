Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBFF606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 19:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Fj0mfvGR;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.a=rsa-sha256 header.s=fe-e1b5cab7be header.b=qjS4jduR;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=forwardemail.net header.i=@forwardemail.net header.a=rsa-sha256 header.s=default header.b=GP7oKhu+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=a6dnou4AlVsKuZVzJKAa8K6lzMvbgr6BVUdN5pi9IJ4=; b=Fj0mfvGRBrg1T1buQSZMbLsN0h
	UIavQ/rfnPSzoXAXKWzLq9+KbEgBmLv3QkLqf2fIZT4zbzny/YnfnP/naKugTwxFEfIXzt896Jlbt
	NalvZ9EqytISMJrGnrAiVZ6b3khl/z5jcewVuoDEGmRyK8sWo2Eu6mL9p87ZxdYHRqvq/fLUCNeWL
	OL/jwrK8uUxs1OGQHu2Ovz28u0H7DBPTWwzeUyMb98AnS1KfKk1u5gWW8CQJSMkaxv1Fkzyhq3eF+
	gamAgo4gD2iBQfNITS9n+234HkI7YGNNmTxAyhs+Tdo2exLjRrZQ2fvDuqK49bGDwpta7euxMLOaN
	8Vt7M4nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWf3C-0000000EHZ4-3epp;
	Thu, 26 Nov 2026 19:22:34 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWf39-0000000EHXy-1x1U
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Nov 2026 19:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From:
 Content-Language: References: Cc: To: Subject: MIME-Version: Date:
 Message-ID: CFBL-Address: CFBL-Feedback-ID; q=dns/txt; s=fe-e1b5cab7be;
 t=1795720949; bh=xtYY1ni/jPVazlX7rZS6Ml4RefbM5/NVLUrh9nhJs3k=;
 b=qjS4jduRS4Zsiv6coXPbfaH9e+XGqs4q2ihHhHsrokiBP/26+cKAw1kRFF1eYdMxYg2L7CmCV
 V+/O5skL6qdZQMrQTbyjI/DPEhF7ALt81xgwzs5dgB8y6TKOewsa0iM6idHDw98h/58qnaXY0LY
 JQc93DBMKFLoqKwnVnJnzXwm42AtWmGlTrlxMLi4fLaAZ1lMd7yOxujzncVCoblG8ic9P6lBYrk
 273ZjjyxSM/srPmJTS1TQ0bMDp9iphkgXqtJSuKXeMCFPBcVK/MP1s5lge/HQ7CQYwYy2Ys0Jqf
 81H/t51Tux8lmKfncip440oq/Y4+BemoXsLh+2ndxjjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forwardemail.net;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From:
 Content-Language: References: Cc: To: Subject: MIME-Version: Date:
 Message-ID: CFBL-Address: CFBL-Feedback-ID; q=dns/txt; s=default;
 t=1795720949; bh=xtYY1ni/jPVazlX7rZS6Ml4RefbM5/NVLUrh9nhJs3k=;
 b=GP7oKhu+bpNFB+xObrjHquy2UoP/S7BPfcxDiY+8a6/Ec0KZLOL+2V9Jw2MVZ4Kvx+bZmuzty
 N/GCBt9MoLvDBjCJaOg1MrLPjPuRp4jYPm4R8EK5Hy0rIsEX3rBovGLTLlGklaNeo/Jn5DlnYf6
 YMuliIyIQW2XQNRfWAmMvcw=
CFBL-Feedback-ID: 6b0886f4db90085b74e95c0c:357941f6256b17592609bb13a46c9175
CFBL-Address: abuse@forwardemail.net; report=arf
X-Forward-Email-ID: 6b0886f4db90085b74e95c0c
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.19.39
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <b2e8d547-dd57-4ce4-9019-372d3dc962d7@kwiboo.se>
Date: Thu, 26 Nov 2026 20:22:25 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add ArmSoM Forge1
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20261122184532.1300004-1-jonas@kwiboo.se>
 <20261122184532.1300004-2-jonas@kwiboo.se>
 <8fc3f505-61bf-4a6b-80f9-1cd6bb1e698a@kernel.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <8fc3f505-61bf-4a6b-80f9-1cd6bb1e698a@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_112231_852998_9A1EF382 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -2.0 (--)
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

SGkgS3J6eXN6dG9mLAoKT24gMTEvMjUvMjAyNiAxMDo0NSBBTSwgS3J6eXN6dG9mIEtvemxvd3Nr
aSB3cm90ZToKPiBPbiAyMi8xMS8yMDI2IDE5OjQ1LCBKb25hcyBLYXJsbWFuIHdyb3RlOgo+PiBB
cm1Tb00gRm9yZ2Ux4oCL4oCLIGlzIGFuIGluZHVzdHJpYWwtZ3JhZGUgcHJvZHVjdCBwb3dlcmVk
IGJ5IHRoZSDigIvigItSSzM1MDZKCj4+IHRyaXBsZS1jb3JlIENvcnRleC1BNyBhcHBsaWNhdGlv
biBwcm9jZXNzb3LigIvigIsuIEl0IGlzIHNwZWNpZmljYWxseSBkZXNpZ25lZAo+PiBmb3IgaW5k
dXN0cmlhbCBnYXRld2F5cywgSE1JcywgUExDcywgaGFuZGhlbGQgUE9TIGRldmljZXMsIGFuZCBo
b21lCj4+IGFwcGxpYW5jZSBkaXNwbGF5L2NvbnRyb2wgYXBwbGljYXRpb25zLgo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4gCj4gTWFsaWNpb3Vz
IGNoYXJhY3RlcnMgZm91bmQgaW4geW91ciBwb3N0aW5nLiBEcm9wcGluZy4KPiAKPiBCZSBzdXJl
IHlvdSB1c2Ugc3RhbmRhcmQgdG9vbHMsIHN0YW5kYXJkIGVkaXRvcnMgYW5kIHJ1biBjaGVja3Bh
dGNoLgo+IFRIRVJFIElTIE5PIHdheSBzdGFuZGFyZCBlZGl0b3IgY2FuIGNyZWF0ZSB6ZXJvIHdp
ZHRoIHNwYWNlLgoKU29ycnkgYWJvdXQgdGhpcywgSSBjb3BpZWQgdGV4dCBmcm9tIEFybVNvTSB3
ZWJwYWdlIGludG8gVlMgQ29kZSwgYW5kCm5hbm8gZGlkIG5vdCBzaG93IGFueXRoaW5nIHNwZWNp
YWwgd2hlbiBhbWVuZGluZyB0aGUgY29tbWl0IG1lc3NhZ2UuCgpjaGVja3BhdGNoIGRvIHNob3cg
YSB3YXJuaW5nLCBob3dldmVyIGluIHRlcm1pbmFsIGFuZCBlZGl0b3IgdGhlIGxpbmUKZGlkIG5v
dCBsb29rIHRvbyBsb25nLCBzaG91bGQgaGF2ZSB0cnVzdGVkIGNoZWNrcGF0Y2ggOi0pCgogIFdB
Uk5JTkc6IFByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUgKHBvc3NpYmxlIHVud3Jh
cHBlZCBjb21taXQgZGVzY3JpcHRpb24/KQogICM5OgogIEFybVNvTSBGb3JnZTHigIvigIsgaXMg
YW4gaW5kdXN0cmlhbC1ncmFkZSBwcm9kdWN0IHBvd2VyZWQgYnkgdGhlIOKAi+KAi1JLMzUwNkoK
CldpbGwgc2VuZCBhIHYyIHdpdGhvdXQgemVyby13aWR0aCBzcGFjZSBhbmQgaGF2ZSBjaGFuZ2Vk
IG15IGdpdCBlZGl0b3IKdG8gdmltIHRvIGhlbHAgY2F0Y2ggYW55dGhpbmcgc2ltaWxhciBpbiBm
dXR1cmUuCgpSZWdhcmRzLApKb25hcwoKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
