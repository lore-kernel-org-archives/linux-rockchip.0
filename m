Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5913CC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 13:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJlcyYTAI45nSwGZ9KGlXWxVBlK0bQIIfcqZGd9lZjM=; b=nI1aU2rr/9ypr5
	Q/gZWDTdJRX8njtITymGF7e5jZLjNLoNbIFRTM/tmDjWyEiH3cNU2Ujd8yyc7cm3LrjmCdalC295s
	9DA7I6rVLflcZvuf1/sErl0wsqhm1ZFQi0Wl5TrtUkbmuXC8F0/aYpF4vwRuwsOTm+z8C6jVQHuJP
	O42gvM1Y0JSiicscrSsYbLgTHvSFMJJNeXHPjmW9YHCMc9uQBo5shmBpqAdHBtagC+7l7udqXYJiN
	4jdlCCo1Z0k3LG2WSLGRdwwstrJM1KS4R1eEGC2WG/Yutu0W6k2JnrDm2qQeJ1phCGl+B5Jx5Ixdb
	8OFh4+5/smFRnWLqnE9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHQK2-00E1US-S8; Tue, 08 Feb 2022 13:14:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHQBd-00Dy6Q-HJ
 for linux-rockchip@lists.infradead.org; Tue, 08 Feb 2022 13:05:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 8B08C1F445AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1644325534;
 bh=+LYk/UmBswNwBd6wWfrZcVl5V3vV0QlUdcWtoUKbDuQ=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=IanUsb20GeXPoeXi8WV425L3Z8GSZZDMd0uxkgXYPzceXXkZJh9UCows5Csu7Wvvc
 B3yIDNzZT4Xy4oCBqx+wDXMTsql5c19joggI4o0NCcavdvhcu3HPkMpjZ/JTdD6lWt
 1ci/i++lztI4rFx09BtouRBuOS0jm/JXSjF08/fdua7R5mT+LTCOVWOseeYR57JO/y
 F8xL5qxuJXEYjUHYtf3h4CECr7JoSHdDDNkOa0IoiA0+n5gq7baWcQ99XTE/UFrhyZ
 qQy+aeuj0dfnjFYL/C7+b/vqY40oUyVHUW3CjmgJ3qxzYqA3twd6xi4DcFWuX0Xd6J
 8kaYKsldRv48Q==
Message-ID: <73b30627-2908-8472-01db-d07e176ce129@collabora.com>
Date: Tue, 8 Feb 2022 14:05:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] drm/rockchip: vop: Correct RK3399 VOP register fields
Content-Language: en-US
To: Brian Norris <briannorris@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, 
 David Airlie <airlied@linux.ie>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 stable@vger.kernel.org, Mark Yao <markyao0591@gmail.com>
References: <20220119161104.1.I1d01436bef35165a8cdfe9308789c0badb5ff46a@changeid>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20220119161104.1.I1d01436bef35165a8cdfe9308789c0badb5ff46a@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_050537_812861_7470F6E9 
X-CRM114-Status: GOOD (  19.66  )
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

SGkgQnJpYW4sCgpTb3JyeSBhYm91dCB0aGUgZGVsYXkuCgpXIGRuaXUgMjAuMDEuMjAyMiBvwqAw
MToxMSwgQnJpYW4gTm9ycmlzIHBpc3plOgo+IENvbW1pdCA3NzA3ZjcyMjdmMDkgKCJkcm0vcm9j
a2NoaXA6IEFkZCBzdXBwb3J0IGZvciBhZmJjIikgc3dpdGNoZWQgdXAKPiB0aGUgcmszMzk5X3Zv
cF9iaWdbXSByZWdpc3RlciB3aW5kb3dzLCBidXQgaXQgZGlkIHNvIGluY29ycmVjdGx5Lgo+IAo+
IFRoZSBiaWdnZXN0IHByb2JsZW0gaXMgaW4gcmszMjg4X3dpbjIzX2RhdGFbXSB2cy4KPiByazMz
Njhfd2luMjNfZGF0YVtdIC5mb3JtYXQgZmllbGQ6Cj4gCj4gICAgUkszMjg4J3MgZm9ybWF0OiBW
T1BfUkVHKFJLMzI4OF9XSU4yX0NUUkwwLCAweDcsIDEpCj4gICAgUkszMzY4J3MgZm9ybWF0OiBW
T1BfUkVHKFJLMzM2OF9XSU4yX0NUUkwwLCAweDMsIDUpCj4gCj4gQml0cyA1OjYgKGkuZS4sIHNo
aWZ0IDUsIG1hc2sgMHgzKSBhcmUgY29ycmVjdCBmb3IgUkszMzk5LCBhY2NvcmRpbmcgdG8KPiB0
aGUgVFJNLgo+IAo+IFRoZXJlIGFyZSBhIGZldyBvdGhlciBzbWFsbCBkaWZmZXJlbmNlcyBiZXR3
ZWVuIHRoZSAzMjg4IGFuZCAzMzY4Cj4gZGVmaW5pdGlvbnMgdGhhdCB3ZXJlIHN3YXBwZWQgaW4g
Y29tbWl0IDc3MDdmNzIyN2YwOS4gSSByZXZpZXdlZCB0aGVtIHRvCj4gdGhlIGJlc3Qgb2YgbXkg
YWJpbGl0eSBhY2NvcmRpbmcgdG8gdGhlIFJLMzM5OSBUUk0gYW5kIGZpeGVkIHRoZW0gdXAuCj4g
Cj4gVGhpcyBmaXhlcyBJT01NVSBpc3N1ZXMgKGFuZCBkaXNwbGF5IGVycm9ycykgd2hlbiB0ZXN0
aW5nIHdpdGggQkcyNAo+IGNvbG9yIGZvcm1hdHMuCj4gCj4gRml4ZXM6IDc3MDdmNzIyN2YwOSAo
ImRybS9yb2NrY2hpcDogQWRkIHN1cHBvcnQgZm9yIGFmYmMiKQo+IENjOiBBbmRyemVqIFBpZXRy
YXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+IENjOiA8c3RhYmxlQHZnZXIua2Vy
bmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBCcmlhbiBOb3JyaXMgPGJyaWFubm9ycmlzQGNocm9t
aXVtLm9yZz4KClRlc3RlZC1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29s
bGFib3JhLmNvbT4KCj4gLS0tCj4gSSdkIGFwcHJlY2lhdGUgbm90ZXMgb3IgdGVzdGluZyBmcm9t
IEFuZHJ6ZWosIHNpbmNlIEknbSBub3Qgc3VyZSBob3cgaGUKPiB0ZXN0ZWQgaGlzIG9yaWdpbmFs
IEFGQkMgd29yay4KPiAKPiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3Bf
cmVnLmMgfCA4ICsrKysrLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfdm9wX3JlZy5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3Zv
cF9yZWcuYwo+IGluZGV4IDFmNzM1M2YwNjg0YS4uNzk4YjU0MmU1OTE2IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3BfcmVnLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wX3JlZy5jCj4gQEAgLTkwMiw2ICs5MDIs
NyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHZvcF93aW5fcGh5IHJrMzM5OV93aW4wMV9kYXRhID0g
ewo+ICAgCS5lbmFibGUgPSBWT1BfUkVHKFJLMzI4OF9XSU4wX0NUUkwwLCAweDEsIDApLAo+ICAg
CS5mb3JtYXQgPSBWT1BfUkVHKFJLMzI4OF9XSU4wX0NUUkwwLCAweDcsIDEpLAo+ICAgCS5yYl9z
d2FwID0gVk9QX1JFRyhSSzMyODhfV0lOMF9DVFJMMCwgMHgxLCAxMiksCj4gKwkueF9taXJfZW4g
PSBWT1BfUkVHKFJLMzI4OF9XSU4wX0NUUkwwLCAweDEsIDIxKSwKPiAgIAkueV9taXJfZW4gPSBW
T1BfUkVHKFJLMzI4OF9XSU4wX0NUUkwwLCAweDEsIDIyKSwKPiAgIAkuYWN0X2luZm8gPSBWT1Bf
UkVHKFJLMzI4OF9XSU4wX0FDVF9JTkZPLCAweDFmZmYxZmZmLCAwKSwKPiAgIAkuZHNwX2luZm8g
PSBWT1BfUkVHKFJLMzI4OF9XSU4wX0RTUF9JTkZPLCAweDBmZmYwZmZmLCAwKSwKPiBAQCAtOTEy
LDYgKzkxMyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgdm9wX3dpbl9waHkgcmszMzk5X3dpbjAx
X2RhdGEgPSB7Cj4gICAJLnV2X3ZpciA9IFZPUF9SRUcoUkszMjg4X1dJTjBfVklSLCAweDNmZmYs
IDE2KSwKPiAgIAkuc3JjX2FscGhhX2N0bCA9IFZPUF9SRUcoUkszMjg4X1dJTjBfU1JDX0FMUEhB
X0NUUkwsIDB4ZmYsIDApLAo+ICAgCS5kc3RfYWxwaGFfY3RsID0gVk9QX1JFRyhSSzMyODhfV0lO
MF9EU1RfQUxQSEFfQ1RSTCwgMHhmZiwgMCksCj4gKwkuY2hhbm5lbCA9IFZPUF9SRUcoUkszMjg4
X1dJTjBfQ1RSTDIsIDB4ZmYsIDApLAo+ICAgfTsKPiAgIAo+ICAgLyoKPiBAQCAtOTIyLDExICs5
MjQsMTEgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB2b3Bfd2luX3BoeSByazMzOTlfd2luMDFfZGF0
YSA9IHsKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgdm9wX3dpbl9kYXRhIHJrMzM5OV92b3Bfd2lu
X2RhdGFbXSA9IHsKPiAgIAl7IC5iYXNlID0gMHgwMCwgLnBoeSA9ICZyazMzOTlfd2luMDFfZGF0
YSwKPiAgIAkgIC50eXBlID0gRFJNX1BMQU5FX1RZUEVfUFJJTUFSWSB9LAo+IC0JeyAuYmFzZSA9
IDB4NDAsIC5waHkgPSAmcmszMjg4X3dpbjAxX2RhdGEsCj4gKwl7IC5iYXNlID0gMHg0MCwgLnBo
eSA9ICZyazMzNjhfd2luMDFfZGF0YSwKPiAgIAkgIC50eXBlID0gRFJNX1BMQU5FX1RZUEVfT1ZF
UkxBWSB9LAo+IC0JeyAuYmFzZSA9IDB4MDAsIC5waHkgPSAmcmszMjg4X3dpbjIzX2RhdGEsCj4g
Kwl7IC5iYXNlID0gMHgwMCwgLnBoeSA9ICZyazMzNjhfd2luMjNfZGF0YSwKPiAgIAkgIC50eXBl
ID0gRFJNX1BMQU5FX1RZUEVfT1ZFUkxBWSB9LAo+IC0JeyAuYmFzZSA9IDB4NTAsIC5waHkgPSAm
cmszMjg4X3dpbjIzX2RhdGEsCj4gKwl7IC5iYXNlID0gMHg1MCwgLnBoeSA9ICZyazMzNjhfd2lu
MjNfZGF0YSwKPiAgIAkgIC50eXBlID0gRFJNX1BMQU5FX1RZUEVfQ1VSU09SIH0sCj4gICB9Owo+
ICAgCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
