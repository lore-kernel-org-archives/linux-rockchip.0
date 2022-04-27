Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 116F0C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Apr 2022 17:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRzJnxXcMzMDfCIlkMu2kfLYfvGjwL/SoBuVSDHkDhM=; b=nis9mJbP2RLsfA
	gz+fSCSrvIBAfViAcIq0oKBddUTpKAFVhR9ylbt3IGEeCHyGH74U6VjqINnjtyLONVEE5OlgaG4H+
	J9aa3crQ63MfX+c1gzxypkDHIjCJoRQyDDPA3YxTFN8nAYNQ0IQ6/byl46Q+JIM+sQLWERyZ2937g
	MR7nON3i54z3xBtBVag8tXFWKMjCBoqwyc2EGnGh2sTNyAcxTjyuGFGxfSSy69W1ypaMPW8bkEZZ3
	cuLpx8BM9qYqHbvljhSTYteiH0Z6sDhznXctcn5kpqk2+ny9qq1S8fZSGi51R3yS/4VU1oY1PdnD9
	aeYRBc2sTmzYfCMxpGBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njlpR-002oDw-4p; Wed, 27 Apr 2022 17:51:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njlcY-002itS-Tf
 for linux-rockchip@lists.infradead.org; Wed, 27 Apr 2022 17:38:36 +0000
Received: from [IPV6:2a01:e0a:120:3210:2c00:b769:f52a:a984] (unknown
 [IPv6:2a01:e0a:120:3210:2c00:b769:f52a:a984])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3F3731F44BC0;
 Wed, 27 Apr 2022 18:38:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651081111;
 bh=DKHT+3N2E30sQ+PZIQ0blxIyuVP2/Uome7ooaaXpxNA=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=mmK1gZ/wxcjHozltOtbc3hRng/GwOYfuG/Pnj9Xq2dBsnswthlPxyldLcJrowabzC
 Fi2JheDigb5BfzflWWDexy2+1gNIzpebO8BOM0jyt2vE3ZbyeN4C2DApqp1yizIS14
 BUkQ2WHtPfKs1OUbtPKyAEtO/7G86oBDY3rVmrnUhijupep3tM+jdelh0pDyG+afgx
 KL8ri5g+NpURL3VN4zEMCS5suUjcnTXLs+eHPj+D5ZWH0uXyUN3rNnO5I52WfiFRpm
 PN8Cy5Zeo13kMm8gUuvfUZpXXIOfh8U9PFxrO9n9UH9sosfGWBuy2zVGjfQz+yVu9m
 0cbzH8JuILEbw==
Message-ID: <5091e44e-6b44-be2e-f53e-29368009f30d@collabora.com>
Date: Wed, 27 Apr 2022 19:38:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] media: hantro: HEVC: Fix tile info buffer value
 computation
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 mchehab@kernel.org, gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, jon@nanocrew.net, aford173@gmail.com,
 kernel@collabora.com
References: <20220427135517.381959-1-benjamin.gaignard@collabora.com>
 <20220427142233.GS2462@kadam>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20220427142233.GS2462@kadam>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_103835_249753_8AEB5457 
X-CRM114-Status: GOOD (  17.87  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

CkxlIDI3LzA0LzIwMjIgw6AgMTY6MjIsIERhbiBDYXJwZW50ZXIgYSDDqWNyaXTCoDoKPiBPbiBX
ZWQsIEFwciAyNywgMjAyMiBhdCAwMzo1NToxN1BNICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3
cm90ZToKPj4gVXNlIHBwcy0+Y29sdW1uX3dpZHRoX21pbnVzMVtqXSArIDEgYXMgdmFsdWUgZm9y
IHRoZSB0aWxlIGluZm8gYnVmZmVyCj4+IGluc3RlYWQgb2YgcHBzLT5jb2x1bW5fd2lkdGhfbWlu
dXMxW2ogKyAxXS4KPj4gVGhlIHBhdGNoIGZpeCBEQkxLX0VfVklYU18yLCBEQkxLX0ZfVklYU18y
LCBEQkxLX0dfVklYU18yLAo+PiBTQU9fQl9NZWRpYVRla181LCBUSUxFU19BX0Npc2NvXzIgYW5k
IFRJTEVTX0JfQ2lzY29fMSB0ZXN0cyBpbiBmbHVzdGVyLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBC
ZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiBGaXhl
czogY2I1ZGQ1YTBmYTUxICgibWVkaWE6IGhhbnRybzogSW50cm9kdWNlIEcyL0hFVkMgZGVjb2Rl
ciIpCj4KPj4gLS0tCj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJf
aGV2Y19kZWMuYyB8IDIgKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50
cm8vaGFudHJvX2cyX2hldmNfZGVjLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb19nMl9oZXZjX2RlYy5jCj4+IGluZGV4IGJiNTEyMzg5YzFhNS4uZmZlYjJmYmVlZmQyIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZj
X2RlYy5jCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX2hl
dmNfZGVjLmMKPj4gQEAgLTc0LDcgKzc0LDcgQEAgc3RhdGljIHZvaWQgcHJlcGFyZV90aWxlX2lu
Zm9fYnVmZmVyKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4+ICAgCQkJCQlub19jaHJvbWEgPSAx
Owo+PiAgIAkJCQlmb3IgKGogPSAwLCB0bXBfdyA9IDA7IGogPCBudW1fdGlsZV9jb2xzIC0gMTsg
aisrKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIF5eXl4KPiBJcyB0aGlzICItIDEiIHN0aWxsIHJlcXVp
cmVkPyAgSSB3b3VsZCBoYXZlIGFzc3VtZWQgdGhlICItIDEiIGhlcmUgd2FzCj4gY29ubmVjdGVk
IHdpdGggdGhlIFtqICsgMV0uICBXaGF0IGlzIHN0b3JlZCBpbiB0aGUgbGFzdCBlbGVtZW50IG9m
IHRoZQo+IC0+Y29sdW1uX3dpZHRoX21pbnVzMSBhcnJheT8KCk5vICItIDEiIGNvbWVzIGZyb20g
dGhlIGRlZmluaXRpb24gb2YgdGhlIGZpZWxkIGluIEguMjY1IHdoaWNoIGlzIHBwcy0+bnVtX3Rp
bGVfY29sdW1uc19taW51czEKV2UgYWRkIDEgdG8gZmlsbCB0aGUgcmVnaXN0ZXJzIHNvIHdlIG5l
ZWQgdGhlICItIDEiIGluIHRoZSBsb29wLgpEYXRhIG9yZGVyaW5nIGlzbid0IGRvY3VtZW50ZWQg
YW55d2hlcmUgc28gdGhhdCBwYXJ0IGlzIGRpcmVjdGx5IGluc3BpcmVkIGJ5CkhhbnRyby9HMiBw
cm9wcmlldGFyeSBzdGFjay4KClJlZ2FyZHMsCkJlbmphbWluCgo+Cj4+ICAgCQkJCQl0bXBfdyAr
PSBwcHMtPmNvbHVtbl93aWR0aF9taW51czFbal0gKyAxOwo+PiAtCQkJCQkqcCsrID0gcHBzLT5j
b2x1bW5fd2lkdGhfbWludXMxW2ogKyAxXTsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXl5eXl4KPgo+PiAr
CQkJCQkqcCsrID0gcHBzLT5jb2x1bW5fd2lkdGhfbWludXMxW2pdICsgMTsKPj4gICAJCQkJCSpw
KysgPSBoOwo+PiAgIAkJCQkJaWYgKGkgPT0gMCAmJiBoID09IDEgJiYgY3RiX3NpemUgPT0gMTYp
Cj4+ICAgCQkJCQkJbm9fY2hyb21hID0gMTsKPiByZWdhcmRzLAo+IGRhbiBjYXJwZW50ZXIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
