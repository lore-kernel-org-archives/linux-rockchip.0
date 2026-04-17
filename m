Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A34EBF8DFFF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 17:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0qmR7dH6Z3FxgGfpkEjazyviMncHQhUzcukmDZ3VBY=; b=qmpcUMkXeDETB+
	6QXHoeQWAEh1qEG0CFw2t6Mpzc0DKD9SlxULhWPAGWjiDXE+1juKzjgr67Ubpp7l7DX1DRwab9bK0
	XTGSOKTMOQZQh2vFWdPMoxbX87kgTk7trj1JsOhbdlUhIR6n+tT0Bmp+th/RN0eNALzFu/+SLIvyO
	dS3pVYX8sM7Ik8B6njJw7KGpdLgpyE7mYsge1pl4JEsb5JRuG0a2ZBf6a9BNyh8uK97I/wV2PHQ47
	QGvaC8DRz9/mQn9sba4x8yCUiJCFM9Q89SAZA654fCyDK5KeBBmjGX/haigV5NCksJt7expUnpt04
	vkkm3q3z2NtWeeRLvMzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDnPZ-00000004L9j-0oAB;
	Fri, 17 Apr 2026 17:55:25 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDnPW-00000004L9B-1adC;
	Fri, 17 Apr 2026 17:55:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776448518;
	bh=Q/GzuWIQEHuvkg9yZh9vcQC8AxPXoccLErnZodAciHk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Ud7SICimNN1HnVxsVZ3WfMCv8BI5OB7UvQ9beJebQtQmpu+coTXWZz8u7N0GISF5O
	 Oxdrr9Eczp15S4lJpmFXUQU2OZ15f43hE3z/CvimwKyeySfmkLQAlYYlUvKC0RUUes
	 mu7PLc6arQL9Um1iQErLyMZke9U2PRElA9D9fddK792XireuYepTaVW+5EyUfTM7tf
	 2PYtNFlkW6fwEIOUWFstvW2mXmVXhfWZ4VYzPKTlGAYavKcM8RMrcNU0rruRYJT1X7
	 yjc5xpzNKjI5rGsHXqSnYgMXQ13OjkCSv/BDX096cBXQHqEizTRnGJ/zALBlESGop1
	 X6cTELVcasb0Q==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 67BBC17E131F;
	Fri, 17 Apr 2026 19:55:18 +0200 (CEST)
Message-ID: <70e9a8a0-414d-428f-8da8-9b65cc764849@collabora.com>
Date: Fri, 17 Apr 2026 20:55:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/40] arm64: dts: rockchip: Wire up frl-enable-gpios for
 RK3576/RK3588 boards
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
 <2297365.1BCLMh4Saa@phil>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2297365.1BCLMh4Saa@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_105522_630414_268DC8B1 
X-CRM114-Status: GOOD (  11.18  )
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

SGkgSGVpa28sCgpPbiA0LzE3LzI2IDI6MzQgUE0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEhp
IENyaXN0YW4sCj4gCj4gQW0gRnJlaXRhZywgMTcuIEFwcmlsIDIwMjYsIDExOjI0OjM0IE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+IAo+
IFsuLi5dCj4gCj4+IENyaXN0aWFuIENpb2NhbHRlYSAoNDApOgo+PiAgICAgICBhcm02NDogZHRz
OiByb2NrY2hpcDogQWRkIGZybC1lbmFibGUtZ3Bpb3MgdG8gcmszNTc2LTEwMGFzay1kc2hhbnBp
LWExCj4+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgZnJsLWVuYWJsZS1ncGlvcyB0
byByazM1NzYtYXJtc29tLXNpZ2U1Cj4+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQg
ZnJsLWVuYWJsZS1ncGlvcyB0byByazM1NzYtZXZiMS12MTAKPj4gICAgICAgYXJtNjQ6IGR0czog
cm9ja2NoaXA6IEFkZCBmcmwtZW5hYmxlLWdwaW9zIHRvIHJrMzU3Ni1ldmIyLXYxMAo+PiAgICAg
ICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGZybC1lbmFibGUtZ3Bpb3MgdG8gcmszNTc2LWx1
Y2tmb3gtY29yZTM1NzYKPj4gICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBmcmwtZW5h
YmxlLWdwaW9zIHRvIHJrMzU3Ni1uYW5vcGktbTUKPj4gICAgICAgYXJtNjQ6IGR0czogcm9ja2No
aXA6IEFkZCBmcmwtZW5hYmxlLWdwaW9zIHRvIHJrMzU3Ni1uYW5vcGktcjc2cwo+PiAgICAgICBh
cm02NDogZHRzOiByb2NrY2hpcDogQWRkIGZybC1lbmFibGUtZ3Bpb3MgdG8gcmszNTc2LXJvYy1w
Ywo+PiAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGZybC1lbmFibGUtZ3Bpb3MgdG8g
cmszNTc2LXJvY2stNGQKPiAKPiBJIGRvIHRoaW5rIG9uZSBwYXRjaCBwZXIgU29DIChyazM1NzYs
IHJrMzU4OCwgcmszNTg4cykgd291bGQgbWFrZSBtb3JlCj4gc2Vuc2UsIGJlY2F1c2UgdGhlc2Ug
cGF0Y2hlcyByZWFsbHkgYXJlIG1vc3RseSBpZGVudGljYWwgOi0pCgpZZWFoLCBhcG9sb2dpZXMg
Zm9yIHRoZSBsYXJnZSBudW1iZXIgb2YgcGF0Y2hlcywgSSB3ZW50IHRoaXMgd2F5IHRvIGFsbG93
CnBlci1ib2FyZCByZXZpZXdzLiAgQXMgcHJldmlvdXNseSBub3RlZCwgSSB0cmllZCB0byBpZGVu
dGlmeSB0aGUgR1BJTyBwaW5zIGZyb20KbXVsdGlwbGUgc291cmNlcywgc28gSSdtIG5vdCBlbnRp
cmVseSBzdXJlIGFib3V0IHRoZSBhY2N1cmFjeSBpbiBldmVyeSBjYXNlLgoKV291bGQgaXQgYmUg
cHJlZmVyYWJsZSB0byBzcXVhc2ggdGhlIHBhdGNoZXMgcGVyIFNvQyBhbmQgYm9hcmQgdmVuZG9y
LCBpbnN0ZWFkPwoKVGhhbmtzLApDcmlzdGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
