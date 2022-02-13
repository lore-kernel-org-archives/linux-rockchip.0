Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E52A4C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Feb 2022 22:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puQaT5zyXMZwwlWuefiNjxAtl545vmuo3G//syO6k58=; b=ypHJkrDnhtcPxh
	xtfDKLluXTCw40qBqMmy+0oyn6HbKWQgxsDNHlsLAFgpsJ+K8A72i30BUkIx9xVH2NOc+azA3FxYM
	DCcTZnTq2hZwTBlsZ/eCgwYkmt1yW7HdHd+wyXGd956/slFo1bMpAnT1IwMh2KaE39+y7sx8gXHXu
	0bkmdD3X77n0YTFsHmzO9pYBOkZjfedUpedD98GMJtu2VCW+LxhmKVx15MmSSBqVsJPvFbVDlKm6g
	tN0GxYHjk1FcOceeroYFm8O8RYMvvummGKkui7yfq4/11FxdbmIuFBsQAfuG1AFDxcB9BTWSGzBww
	beaFWHsppJ1O4qbKdGtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJNVX-00CgEf-5l; Sun, 13 Feb 2022 22:38:15 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJNVJ-00CgBR-Hj; Sun, 13 Feb 2022 22:38:03 +0000
Received: by mail-ed1-x536.google.com with SMTP id w2so5858566edc.8;
 Sun, 13 Feb 2022 14:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=cEXqdohr4G9+8GbA7KQx27qyEW3APoDzbf1L0D0YWH8=;
 b=ffxsUMJtJAYyqcnlW20M2+b/TfBJ8V39bIEF3KCE580o77o6LZmQCS/y4WWWVKhaet
 PZf3lmLFTY5ZJvWRspWfYeiYvut0nvTcRd2LRAGAWvHqlyFtow5XfabfMHRNQGfdWt19
 uKF8eAWo27i4oXe8k/ENNR9iSuZxXXXdd631n3UghpS6SVSV3J77RsrbF1UchTUFhkf8
 xN2/Tik05F2ygZVzeMHwXw8rXCnBIj4+2tkRvBrN7c4r1L73fYUswKommSkkjFSEyBIn
 bYR9q0sJAyUvH4Yaz2OhwlgXx6h89RyrB87Dg27Fe1c6AizjXrrCxiDZd/cLBJl2EV7c
 lzjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=cEXqdohr4G9+8GbA7KQx27qyEW3APoDzbf1L0D0YWH8=;
 b=ZeZOuGDXt5wovh7IUOFddykh3hVzHRLn9N5JLCJbDnGESxdrl9a4Mj3Q7HXpvM/5C8
 i2EljIVWQtyKCKdB5q1BK5t8wXkyYz09tfZeGniAYQi683dttPtdtjk5WV6ON3Uzdgnp
 lGFUZHfJO42AemiFedmHEka5gN6veE7D0MTbdyldrUbkMZjRC25bQbXc4ikY1ZTVW/qH
 F8Qhx3AiJiAjqL7y/U3VhJT/Sv5J/QYfrQiLU1xuK/GV07mMngKNo0BJMRIYVxcNls+i
 Xsuru6j0YNY+0CUcXcHx2I8xC3LS8Hx9EkHLCtl5CHSdr9qr2Z9kLRIJVto/JlcoSNvv
 BgBg==
X-Gm-Message-State: AOAM533uP/yiXn4b1h5eQzB37ify9Dtf7lpcO7f+PK9SM07tZ5BPOMwk
 7tbOJrpQk4/WiKGNx3wNJBc=
X-Google-Smtp-Source: ABdhPJyIZ+hHn+p2OPrMqebzhRMDtiUoxNbGmGCTjygFoEoLxQHFg4MN0PBxc+cflZCb/RxHSjN18w==
X-Received: by 2002:a05:6402:5113:: with SMTP id
 m19mr12526413edd.325.1644791879954; 
 Sun, 13 Feb 2022 14:37:59 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 j19sm1210807ejo.202.2022.02.13.14.37.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 13 Feb 2022 14:37:59 -0800 (PST)
Message-ID: <ce20d22f-c42b-81af-4e02-c120be62e958@gmail.com>
Date: Sun, 13 Feb 2022 23:37:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3] dt-bindings: crypto: convert rockchip-crypto to yaml
Content-Language: en-US
To: LABBE Corentin <clabbe@baylibre.com>, heiko@sntech.de, robh+dt@kernel.org
Cc: davem@davemloft.net, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220211115925.3382735-1-clabbe@baylibre.com>
 <dba5684a-1e5f-a4d4-604b-651751636cf3@gmail.com> <Yga9d5C2f1ubOok8@Red>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <Yga9d5C2f1ubOok8@Red>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220213_143801_621841_BEA635B9 
X-CRM114-Status: GOOD (  21.03  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAyLzExLzIyIDIwOjQ4LCBMQUJCRSBDb3JlbnRpbiB3cm90ZToKPiBMZSBGcmksIEZlYiAx
MSwgMjAyMiBhdCAwMjoxMzowMFBNICswMTAwLCBKb2hhbiBKb25rZXIgYSDDqWNyaXQgOgo+Pgo+
Pgo+PiBPbiAyLzExLzIyIDEyOjU5LCBDb3JlbnRpbiBMYWJiZSB3cm90ZToKPj4+IENvbnZlcnQg
cm9ja2NoaXAtY3J5cHRvIHRvIHlhbWwKPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDb3JlbnRpbiBM
YWJiZSA8Y2xhYmJlQGJheWxpYnJlLmNvbT4KPj4+IC0tLQo+Pj4gQ2hhbmdlcyBzaW5jZSB2MToK
Pj4+IC0gZml4ZWQgZXhhbXBsZQo+Pj4gLSByZW5hbWVkIHRvIGEgbmV3IG5hbWUKPj4+IC0gZml4
ZWQgc29tZSBtYXhJdGVtcwo+Pj4KPj4+IENoYW5nZSBzaW5jZSB2MjoKPj4+IC0gRml4ZWQgbWFp
bnRhaW5lcnMgc2VjdGlvbgo+Pj4KPj4+ICAuLi4vY3J5cHRvL3JvY2tjaGlwLHJrMzI4OC1jcnlw
dG8ueWFtbCAgICAgICAgfCA2NiArKysrKysrKysrKysrKysrKysrCj4+PiAgLi4uL2JpbmRpbmdz
L2NyeXB0by9yb2NrY2hpcC1jcnlwdG8udHh0ICAgICAgIHwgMjggLS0tLS0tLS0KPj4+ICAyIGZp
bGVzIGNoYW5nZWQsIDY2IGluc2VydGlvbnMoKyksIDI4IGRlbGV0aW9ucygtKQo+Pgo+Pj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY3J5cHRv
L3JvY2tjaGlwLHJrMzI4OC1jcnlwdG8ueWFtbAo+Pj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY3J5cHRvL3JvY2tjaGlwLWNyeXB0by50eHQK
Pj4KPj4gVGhlcmUncyBtb3JlIHBvc3NpYmxlIHRvIHRoaXMgZG9jdW1lbnQ6Cj4+Cj4+IGR0LWJp
bmRpbmdzOiBjcnlwdG86IHJvY2tjaGlwOiBhZGQgc3VwcG9ydCBmb3IgcHgzMAo+PiBodHRwczov
L2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgva2VybmVsL2NvbW1pdC8zNjU1ZGYxYmM2MTE0YmRh
MmE2NDE3ZjM5NzcyYTNjYjAwODA4NGVhCj4+Cj4+IGNyeXB0bzogcm9ja2NoaXAgLSBhZGQgcHgz
MCBjcnlwdG8gYWVzL2RlcyBzdXBwb3J0Cj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1s
aW51eC9rZXJuZWwvY29tbWl0L2VlMDgyYWU0ZjYwOWYzYjQ4Zjc2ODQyMGIzMWQ4NjAwNDQ4YmQz
NWEKPj4KPiAKCj4gSGVsbG8KPiAKPiBUaGUgZ3JlYXQgYWR2YW50YWdlIG9mIG91dCBvZiB0cmVl
IGNvZGUgaXMgdGhhdCB3ZSBjYW4gaWdub3JlIGl0LgoKU2VlIGNvbW1lbnQgYmVsb3cuClRoaXMg
aXMgbm90IGFib3V0IGNvZGUsIGJ1dCBhYm91dCByZXVzaW5nIHRoZSAoZ2VuZXJpYykgYmluZGlu
ZyBmb3IgbW9yZQpTb0NzIHRoZW4ganVzdCByazMyODggdGhhdCBoYXBwZW5lZCB0byBoYXZlIExp
bnV4IHN1cHBvcnQuClNlZSBzcGktcm9ja2NoaXAueWFtbCByb2NrY2hpcC1kdy1tc2hjLnlhbWwg
ZXRjLgoKPiBBbnl3YXksIGlmIG9uZSBkYXkgdGhpcyBjb2RlIGdvZXMgdXBzdHJlYW0sIEkgdGhp
bmsgdGhlIG5ldyBjb21wYXRpYmxlIHNob3VsZCBiZSBpbiBhIG5ldyBkcml2ZXIvbW9kdWxlLCBi
b3RoIHYxIGFuZCB2MiBhcmUgdG9vIGRpZmZlcmVudCBmb3IgbWUgdG8gYmUgc2hhcmVkIGluIHRo
ZSBzYW1lIGRyaXZlci4KPiAKPiBCdXQgYmVmb3JlIHVwc3RyZWFtaW5nIHRoaXMgY29kZSwgdGhl
IG9uZSBpbiBtYWlubGluZSBzaG91bGQgYmUgZml4ZWQgZmlyc3QsIGl0IGZhaWwgc2VsZiB0ZXN0
cy4gKEkgaGF2ZSBzb21lIHBhdGNoIHBhcnRpYWx5IGZpeGluZyBpdCBpbiBwcm9ncmVzcykKPiAK
ClN1Y2Nlc3MhIFNlbmQgdXMgbG90cyBvZiBwYXRjaGVzLi4uCklzIGl0IHBvc3NpYmxlIHRvIGtl
ZXAgcG9ydGFiaWxpdHkgKHRvIFUtYm9vdCkgaW4gbWluZCBmb3IgbXVsdGlwbGUKUm9ja2NoaXAg
U29DIHR5cGVzLgoKPiBSZWdhcmRzCj4gCgpBbHRob3VnaCBEVCBhbmQgYmluZGluZ3MgYXJlIGhv
c3RlZCBpbiB0aGUgTGludXggdHJlZSB0aGV5IGFyZSBzZXBhcmF0ZQp0aGluZ3MuIERUIGZpbGVz
IGFuZCBiaW5kaW5ncyBjYW4gYmUgdXNlZCBlbHNld2hlcmUuIFRoZXJlJ3Mgbm8gbmVlZCBmb3IK
KGZ1bGwpIExpbnV4IGRyaXZlciBzdXBwb3J0LiBGb3IgUm9ja2NoaXAgY3J5cHRvIG5vZGVzIHRo
aXMgaXMgbW9zdGx5CmRvbmUgaW4gdGhlIE1hbnVmYWN0dXJlciBVLWJvb3QgdHJlZS4KCmh0dHBz
Oi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC91LWJvb3QvYmxvYi9uZXh0LWRldi9kcml2ZXJz
L2NyeXB0by9yb2NrY2hpcC9jcnlwdG9fdjEuYwoKaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlw
LWxpbnV4L3UtYm9vdC9ibGFtZS9uZXh0LWRldi9kcml2ZXJzL2NyeXB0by9yb2NrY2hpcC9jcnlw
dG9fdjIuYwoKR2l2ZW4gS3J6eXN6dG9mJ3MgY29tbWVudDoKCj4gZmlsZSBuYW1lOiByb2NrY2hp
cCxjcnlwdG8ueWFtbCBvciByb2NrY2hpcCxyazMyODgtY3J5cHRvLnlhbWwuCj4gS2luZCBvZiBk
ZXBlbmRzIHdoZXRoZXIgdGhlcmUgaXMgYW5vdGhlciBiaW5kaW5nIHBvc3NpYmxlIGZvciBuZXdl
cgo+IENyeXB0byBibG9ja3MgZnJvbSBSb2NrY2hpcC4KCkZvciBVLWJvb3QgdGhlIFJvY2tjaGlw
IGR0c2kgZmlsZXMgYXJlIHN5bmNlZCBmcm9tIHRoZSBMaW51eCB0cmVlLApzbyBpdCBtYXkgd2Vs
bCBiZSBwb3NzaWJsZSB0aGF0IHNvbWVvbmUgYWRkIHRoZW0gaGVyZSBhbmQgdXNlIHRoZW0KZWxz
ZXdoZXJlIGlmIG5lZWRlZC4KCkZyb20gdGhlIGxpbmtzIHRvIHRoZSBmaWxlcyBhYm92ZSB3ZSBj
YW4gZXhwZWN0OgpjcnlwdG8gdjE6Cgl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzEyeC1j
cnlwdG8iIH0sCgl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzIyeC1jcnlwdG8iIH0sCgl7
IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzI4OC1jcnlwdG8iIH0sCgl7IC5jb21wYXRpYmxl
ID0gInJvY2tjaGlwLHJrMzMyOC1jcnlwdG8iIH0sCgl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlw
LHJrMzM2OC1jcnlwdG8iIH0sCgl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1jcnlw
dG8iIH0sCgpjcnlwdG8gdjI6Cgl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHB4MzAtY3J5cHRv
IiB9LAoJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazE4MDgtY3J5cHRvIiB9LAoJeyAuY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzMDgtY3J5cHRvIiB9LAoJeyAuY29tcGF0aWJsZSA9ICJy
b2NrY2hpcCxydjExMjYtY3J5cHRvIiB9LAoJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1
NjgtY3J5cHRvIiB9LAoJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtY3J5cHRvIiB9
LAoKV2l0aCBvbmx5IHNtYWxsIG5vZGVzIGRpZmZlcmVuY2VzIGZvciBjbG9ja3Mgd2UgcmV1c2Ug
dGhlICJnZW5lcmljIgpiaW5kaW5nIGFuZCBOT1QgYSAocmszMjg4KSBTb0Mgb3JpZW50YXRlZCBv
bmUuCgpKb2hhbgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
