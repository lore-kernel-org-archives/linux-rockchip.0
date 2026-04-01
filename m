Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA1BED3515F
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 08:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+/jvhGx6KdoKBvBcr107vFbZr+ug0B5gep0ElMsw/E=; b=UcJdwAhotVLGS6
	qvAv9HPvhOzZR1EWeVuc1fd7rfUDF1fE6FaxVCId0ACE6J+QT8NXIcGpMCIHE/taW69YUOYAccuov
	NN4l/ZGbmoQ9CDn7WNot+mWMWGPHR0xvgGim1DzI70pp9PBweQn/kzmXfAkMY7oFAc2N3C1oQXk1N
	zZJh3N1GKevHA5jWFnOlOHeb0jB9YOABoBZQECXBHVEElzz4dZmnMwN6grlhzvsVZn7XG9ds3v7K8
	aiwbMiV0HK3ZfnRwraya9gLr2KOZfGLpLoEI50aNp9YXGOs9xVkPyw7R1rHZ1gUKdZXh9zwheGIyG
	Ps6SpA2kS1oTJmcVl5zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7r9H-0000000EKvv-19XB;
	Wed, 01 Apr 2026 08:42:03 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7r9E-0000000EKvR-27BW
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Apr 2026 08:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1775032919;
 bh=SqAh8+J+p74P/kyDkkVzKjpnfMDd7XwXqLzKDtTGffs=;
 b=xQnsWZ4o65CfU2AXN4GcpAykVysrrDtLarScQonb3Ix2hCtZcBJs3QrOBp+KaIOwI5tetBPsl
 oHYpF4vI41/04y6791QvAu8cGBh9yevBaQKv1z5f0skEJkQIU18DbRsRNSPixhfYnaaag7TSzJD
 eNXoDczGCokibhJFon8qJug4gBQQBGS2g+iIYgS3blWfcz9CP7iR2oR3Opwes4TJRPE8WhM/6j4
 tZqncmoHyQUKAUrjIxMxA1iiKEfI899TaSxyDso7Dj0Gzt2GbZStMwPKdxkfib8UwePMlfX11w4
 hDU7eUR1So4S+4YEA5hWe1Pv0c20ZNzMYZp9EsXFLW6Q==
X-Forward-Email-ID: 69ccda55842394fec82951f9
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.6.64
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <e622cc9e-8fb0-454a-b88e-dc13cf2ff507@kwiboo.se>
Date: Wed, 1 Apr 2026 10:41:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] iommu/rockchip: fix page table allocation flags for v2
 IOMMU
To: Simon <xxm@rock-chips.com>, Midgy BALON <midgy971@gmail.com>
Cc: iommu@lists.linux.dev, joro@8bytes.org, will@kernel.org,
 robin.murphy@arm.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20260331075010.1463-1-midgy971@gmail.com>
 <0f285782-b12a-4abd-bca7-b6c549bed59f@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <0f285782-b12a-4abd-bca7-b6c549bed59f@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_014200_640074_1C2D1A17 
X-CRM114-Status: GOOD (  21.71  )
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

SGkgU2ltb24sCgpPbiA0LzEvMjAyNiA5OjQ4IEFNLCBTaW1vbiB3cm90ZToKPiBIaSBNaWRneSwK
PiAKPiDlnKggMjAyNi8zLzMxIDE1OjUwLCBNaWRneSBCQUxPTiDlhpnpgZM6Cj4+IGNvbW1pdCAy
YTdlNjQwMGY3MmIgKCJpb21tdTogcm9ja2NoaXA6IEFsbG9jYXRlIHRhYmxlcyBmcm9tIGFsbAo+
PiBhdmFpbGFibGUgbWVtb3J5IGZvciBJT01NVSB2MiIpIHJlbW92ZWQgR0ZQX0RNQTMyIGZyb20K
Pj4gaW9tbXVfZGF0YV9vcHNfdjIsIHJlYXNvbmluZyB0aGF0IFJLMzU2eCBhbmQgUkszNTg4IElP
TU1VIHYyIGhhcmR3YXJlCj4+IHN1cHBvcnRzIHVwIHRvIDQwLWJpdCBwaHlzaWNhbCBhZGRyZXNz
ZXMgZm9yIHBhZ2UgdGFibGVzLiAgSG93ZXZlciwgdGhlCj4+IFJLMzU2OCBJT01NVSBwYWdlLXRh
YmxlIHdhbGtlciB1c2VzIGEgMzItYml0IEFYSSBidXM6IGl0IGNhbm5vdCBhY2Nlc3MKPj4gcGh5
c2ljYWwgYWRkcmVzc2VzIGFib3ZlIDQgR0IgcmVnYXJkbGVzcyBvZiB0aGUgYWRkcmVzcyBlbmNv
ZGluZyByYW5nZS4KPj4KPj4gT24gYm9hcmRzIHdpdGggbW9yZSB0aGFuIDQgR0Igb2YgUkFNIChl
LmcuIDggR0IgTFBERFI0WCksIHJlbW92aW5nCj4+IEdGUF9ETUEzMiBjYXVzZXMgdHdvIGRpc3Rp
bmN0IGZhaWx1cmUgbW9kZXM6Cj4+Cj4+IDEuIERpcmVjdCBhbGxvY2F0aW9uIGFib3ZlIDQgR0I6
IGlvbW11X2FsbG9jX3BhZ2VzX3N6KCkgbWF5IHJldHVybgo+PiAgICAgbWVtb3J5IGFib3ZlIDB4
MTAwMDAwMDAwLiAgVGhlIGhhcmR3YXJlIHBhZ2UtdGFibGUgd2Fsa2VyIGlzc3VlcyBhCj4+ICAg
ICBidXMgZXJyb3IgdHJ5aW5nIHRvIGRlcmVmZXJlbmNlIHRob3NlIGFkZHJlc3NlcywgY2F1c2lu
ZyBhbiBJT01NVQo+PiAgICAgZmF1bHQgb24gdGhlIGZpcnN0IERNQSB0cmFuc2FjdGlvbi4KPgo+
IFdoaWNoIElQIGJsb2NrIGlzIGhpdHRpbmcgdGhpcz8gV2UnZCBsaWtlIHRvIHRha2UgYSBsb29r
IG9uIG91ciBlbmQuCgpJIGhhdmUgc2VlbiByZXBvcnRzIHRoYXQgdGhlIE5QVSBNTVUgb24gUksz
NTY4L1JLMzU2NiBpcyBoYXZpbmcgc29tZQppc3N1ZSB1c2luZyBEVEUvUFRFIHdpdGggPjMyLWJp
dCBhZGRyZXNzZXMsIG1heWJlIGl0IHVzZXMgYSBkaWZmZXJlbnQKTU1VIGh3IHJldmlzaW9uIG9y
IGhhcyBzb21lIGh3IGVycmF0YT8KCkZyb20gbXkgb3duIHRlc3RpbmcgYXQgbGVhc3QgdGhlIFZP
UDIgTU1VIG9uIFJLMzU2OCAoYW5kIFJLMzU4OCkgd2FzCmFibGUgdG8gaGFuZGxlIDQwLWJpdCBh
ZGRyZXNzYWJsZSBEVEUvUFRFLCBoZW5jZSB0aGUgb3JpZ2luYWwgY29tbWl0CjJhN2U2NDAwZjcy
YiAoImlvbW11OiByb2NrY2hpcDogQWxsb2NhdGUgdGFibGVzIGZyb20gYWxsIGF2YWlsYWJsZQpt
ZW1vcnkgZm9yIElPTU1VIHYyIikuCgpBcyBhbHNvIG1lbnRpb25lZCBpbiBteSByZXBseSBhdCBb
MV0sIG1heWJlIHRoZSBOUFUgTU1VIGhhcyBzb21lIGh3CmxpbWl0YXRpb24gb3IgZXJyYXRhIGFu
ZCBtYXkgbmVlZCB0byB1c2UgYSBkaWZmZXJlbnQgY29tcGF0aWJsZS4KClsxXSBodHRwczovL2xv
cmUua2VybmVsLm9yZy9yLzNjZDYzYjNkLTFjNWUtNGExMS04NTZlLWM0YWViNWQ5N2Q1NUBrd2li
b28uc2UvCgpSZWdhcmRzLApKb25hcwoKPgo+PiAyLiBTV0lPVExCIGJvdW5jZS1idWZmZXIgcG9p
c29uaW5nOiB3aXRob3V0IEdGUF9ETUEzMiwgcGFnZSB0YWJsZXMgbGFuZAo+PiAgICAgYWJvdmUg
dGhlIFNXSU9UTEIgd2luZG93LiAgZG1hX21hcF9zaW5nbGUoKSB3aXRoIERNQV9CSVRfTUFTSygz
MikKPj4gICAgIHRoZW4gYm91bmNlcyB0aGVtIGludG8gYSBidWZmZXIgYmVsb3cgNCBHQi4gIHJr
X2R0ZV9nZXRfcGFnZV90YWJsZSgpCj4+ICAgICByZXR1cm5zIHBoeXNfdG9fdmlydCgpIG9mIHRo
ZSBib3VuY2UgYnVmZmVyIGFkZHJlc3M7IFBURXMgYXJlIHdyaXR0ZW4KPj4gICAgIHRoZXJlOyB0
aGUgbmV4dCBkbWFfc3luY19zaW5nbGVfZm9yX2RldmljZShETUFfVE9fREVWSUNFKSBjb3BpZXMg
dGhlCj4+ICAgICBvcmlnaW5hbCAoemVybykgZGF0YSBiYWNrIG92ZXIgdGhlIGJvdW5jZSBidWZm
ZXIsIHNpbGVudGx5IGVyYXNpbmcgdGhlCj4+ICAgICBmcmVzaGx5IHdyaXR0ZW4gUFRFcy4gIFRo
ZSBJT01NVSBmYXVsdHMgYmVjYXVzZSBldmVyeSBQVEUgcmVhZHMgYXMgemVyby4KPgo+IFRoaXMg
cHJvYmFibHkgbmVlZCBhIHNlcGFyYXRlIHBhdGNoLiBPbmUgd2F5IHRvIGZpeCBpdCB3b3VsZCBi
ZSB0byB0cmFjayB0aGUKPiBvcmlnaW5hbCBMMiBwYWdlIHRhYmxlIGJhc2UgYWRkcmVzc2VzIGlu
IHN0cnVjdCBya19pb21tdV9kb21haW4sCj4gdGhlbiBoYXZlIHJrX2R0ZV9nZXRfcGFnZV90YWJs
ZSgpIHJldHVybiB0aGUgdHJhY2tlZCBhZGRyZXNzIGluc3RlYWQgb2YKPiBkZXJpdmluZyBpdCBm
cm9tIHRoZSBEVEUuCj4KPj4gUmVzdG9yZSBHRlBfRE1BMzIgKGFuZCBETUFfQklUX01BU0soMzIp
KSBmb3IgaW9tbXVfZGF0YV9vcHNfdjIsIHdoaWNoCj4+IGN1cnJlbnRseSBvbmx5IHNlcnZlcyAi
cm9ja2NoaXAscmszNTY4LWlvbW11IiBpbiBtYWlubGluZS4KPj4KPj4gVGVzdGVkIG9uIFJhZHhh
IFJPQ0sgM0IgKFJLMzU2OCwgOCBHQiBMUEREUjRYKToKPj4gICAgLSBNb2JpbGVOZXRWMSB2aWEg
UktOTjogNS44IG1zL2luZmVyZW5jZSAoSU9NTVUgbW9kZSkKPj4gICAgLSBZT0xPdjVzIDY0MHg2
NDAgdmlhIFJLTk46IH41NyBtcy9pbmZlcmVuY2UgKElPTU1VIG1vZGUpCj4+ICAgIC0gTm8gSU9N
TVUgZmF1bHRzLCBjb3JyZWN0IGluZmVyZW5jZSByZXN1bHRzCj4+Cj4+IEZpeGVzOiAyYTdlNjQw
MGY3MmIgKCJpb21tdTogcm9ja2NoaXA6IEFsbG9jYXRlIHRhYmxlcyBmcm9tIGFsbCBhdmFpbGFi
bGUgbWVtb3J5IGZvciBJT01NVSB2MiIpCj4+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4+
IENjOiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4+IFNpZ25lZC1vZmYtYnk6IE1p
ZGd5IEJBTE9OIDxtaWRneTk3MUBnbWFpbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvaW9tbXUv
cm9ja2NoaXAtaW9tbXUuYyB8IDQgKystLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L3Jv
Y2tjaGlwLWlvbW11LmMgYi9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKPj4gaW5kZXgg
ODVmMzY2N2U3OTcuLjhiNDVkYjI5NDcxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2lvbW11L3Jv
Y2tjaGlwLWlvbW11LmMKPj4gKysrIGIvZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jCj4+
IEBAIC0xMzU4LDggKzEzNTgsOCBAQCBzdGF0aWMgc3RydWN0IHJrX2lvbW11X29wcyBpb21tdV9k
YXRhX29wc192MiA9IHsKPj4gICAJLnB0X2FkZHJlc3MgPSAmcmtfZHRlX3B0X2FkZHJlc3NfdjIs
Cj4+ICAgCS5ta19kdGVudHJpZXMgPSAmcmtfbWtfZHRlX3YyLAo+PiAgIAkubWtfcHRlbnRyaWVz
ID0gJnJrX21rX3B0ZV92MiwKPj4gLQkuZG1hX2JpdF9tYXNrID0gRE1BX0JJVF9NQVNLKDQwKSwK
Pj4gLQkuZ2ZwX2ZsYWdzID0gMCwKPj4gKwkuZG1hX2JpdF9tYXNrID0gRE1BX0JJVF9NQVNLKDMy
KSwKPj4gKwkuZ2ZwX2ZsYWdzID0gR0ZQX0RNQTMyLAo+PiAgIH07Cj4+ICAgCj4+ICAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcmtfaW9tbXVfZHRfaWRzW10gPSB7CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
