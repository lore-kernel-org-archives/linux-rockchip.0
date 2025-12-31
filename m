Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3559EE6425
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Dec 2025 10:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4Gdzc7iw4hIt0T9msz638CsiURdio5IGPQN1uwCUYQ=; b=p9nB05Db8CZ1BF
	te70ItrX+2QIneSVH6CIVoJAT9NRU4NrxjAiCXobO03zJuqBGBpZ81w1GMF7G+tR5NsZ73GzgpPOX
	XUE8xYQH7+8StQZU5PyHu3tnoU2h3rOlTLfVYkFb7kI+sdxocKYJQ3OcRYKtnACLeMQA03ZYtAZhO
	9s18RLzITZasYMvzQw8PhPBuccuZmioiDXWWxPCp7KmHm605AZ5N6BbAOdGwKu9hrQ/oJh1RIX0EB
	TWa3QwUiVs1A1g4NdA80kiLDbH5CjztHOrVkDjDTZIXBdEv28FeeBHusccW2I9aS5l2iU8v+0sxEX
	x4Y87tik6idkwqVHrVMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatCL-00000005rZm-06En;
	Wed, 31 Dec 2025 10:12:57 +0000
Received: from mail-m32124.qiye.163.com ([220.197.32.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatCI-00000005rZL-115W;
	Wed, 31 Dec 2025 10:12:56 +0000
Received: from [172.16.12.16] (gy-adaptive-ssl-proxy-4-entmail-virt151.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2f2651ced;
	Wed, 31 Dec 2025 18:12:44 +0800 (GMT+08:00)
Message-ID: <7370b9a4-692d-43f8-9a48-82da0b4de939@rock-chips.com>
Date: Wed, 31 Dec 2025 18:12:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/7] dt-bindings: pinctrl: rockchip: Add rk3506 rmio
 support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 tao.huang@rock-chips.com
References: <20251227114957.3287944-1-ye.zhang@rock-chips.com>
 <20251227114957.3287944-6-ye.zhang@rock-chips.com>
 <20251228-olive-termite-of-painting-1bee5b@quoll>
From: Ye Zhang <ye.zhang@rock-chips.com>
In-Reply-To: <20251228-olive-termite-of-painting-1bee5b@quoll>
X-HM-Tid: 0a9b73e547e909d8kunm087a468e2a54c65
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhJTVZLH0tMH05NTE1OTU9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUJNS0
	pVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=VfB2YTq1dDLW4lPQb/wYiy8TiQJLBnx5w//V6mZeX82fybxRalbCFF764gDqYPMyY8TwubCdWJxDd0nDgN9nPJkdhk16V7IiHCYc2A0Bwh+vQZJ6Ra0U8vSuvApQSnLgkUmzXmfhUd46JG7C0+gqVzBw8EG2mRIIuHLqkuDY5zo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=38C12CA+yJXwWbEH8TepZMkmX51aW9ULukFZHKnMqZQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_021254_787389_25091584 
X-CRM114-Status: GOOD (  21.83  )
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

CuWcqCAyMDI1LzEyLzI4IDE4OjM3LCBLcnp5c3p0b2YgS296bG93c2tpIOWGmemBkzoKPiBPbiBT
YXQsIERlYyAyNywgMjAyNSBhdCAwNzo0OTo1NVBNICswODAwLCBZZSBaaGFuZyB3cm90ZToKPj4g
VGhlIFJLMzUwNiBTb0MgaW50cm9kdWNlcyBhIHNlY29uZGFyeSBibG9jay1sZXZlbCBwaW5tdXgg
Y29udHJvbGxlciBjYWxsZWQKPj4gUk1JTyAoUm9ja2NoaXAgTWF0cml4IEkvTykuIFdoZW4gdGhl
IHByaW1hcnkgSU9NVVggaXMgc2VsZWN0ZWQgdG8gYQo+PiBzcGVjaWZpYyBmdW5jdGlvbiwgdGhl
IHBpbiBzaWduYWwgaXMgcm91dGVkIHRvIHRoZSBSTUlPIGJsb2NrLCB3aGVyZSBhCj4+IHNlY29u
ZGFyeSBzZWxlY3Rpb24gZGV0ZXJtaW5lcyB0aGUgZmluYWwgZnVuY3Rpb24uCj4+Cj4+IFRoaXMg
cGF0Y2ggYWRkcyB0aGUgbmVjZXNzYXJ5IHByb3BlcnRpZXMgdG8gc3VwcG9ydCBSTUlPOgo+PiAt
IHJvY2tjaGlwLHJtaW86IHBoYW5kbGUgdG8gdGhlIFJNSU8gc3lzY29uIG5vZGUuCj4+IC0gcm9j
a2NoaXAscm1pby1waW5zOiBhIG1hdHJpeCB0byBjb25maWd1cmUgdGhlIFJNSU8gYmxvY2suCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IFllIFpoYW5nIDx5ZS56aGFuZ0Byb2NrLWNoaXBzLmNvbT4KPj4g
LS0tCj4+ICAgLi4uL2JpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAscGluY3RybC55YW1sICAgIHwg
MjQgKysrKysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25z
KCspCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGluY3RybC9yb2NrY2hpcCxwaW5jdHJsLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGluY3RybC9yb2NrY2hpcCxwaW5jdHJsLnlhbWwKPj4gaW5kZXggOTc5NjAyNDU2
NzZkLi44ODdiZWMyMmIxNzIgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waW5jdHJsL3JvY2tjaGlwLHBpbmN0cmwueWFtbAo+PiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGluY3RybC9yb2NrY2hpcCxwaW5jdHJsLnlhbWwK
Pj4gQEAgLTY2LDYgKzY2LDEzIEBAIHByb3BlcnRpZXM6Cj4+ICAgICAgICAgUmVxdWlyZWQgZm9y
IGF0IGxlYXN0IHJrMzE4OCBhbmQgcmszMjg4LiBPbiB0aGUgcmszMzY4IHRoaXMgc2hvdWxkCj4+
ICAgICAgICAgcG9pbnQgdG8gdGhlIFBNVUdSRiBzeXNjb24uCj4+ICAgCj4+ICsgIHJvY2tjaGlw
LHJtaW86Cj4+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhh
bmRsZQo+PiArICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgVGhlIHBoYW5kbGUgb2YgdGhlIHN5
c2NvbiBub2RlIGZvciB0aGUgUk1JTyByZWdpc3RlcnMsIHVzZWQgYnkKPj4gKyAgICAgIHNvbWUg
U29DcyAoZS5nLiByazM1MDYpIHRvIGNvbmZpZ3VyZSB0aGUgc2Vjb25kYXJ5IGJsb2NrLWxldmVs
Cj4+ICsgICAgICBwaW5tdXggZnVuY3Rpb25zLgo+PiArCj4gWW91IG5lZWQgdG8gZGlzYWxsb3cg
aXQgZm9yIG90aGVyIHZhcmlhbnRzIGluIGlmOnRoZW46IGJsb2NrLgpXaWxsIGJlIGNvbXBsZXRl
ZCBpbiB2NS4KPj4gICAgICIjYWRkcmVzcy1jZWxscyI6Cj4+ICAgICAgIGVudW06IFsxLCAyXQo+
PiAgIAo+PiBAQCAtMTQ0LDYgKzE1MSwyMyBAQCBhZGRpdGlvbmFsUHJvcGVydGllczoKPj4gICAg
ICAgICAgICAgICAgICAgVGhlIHBoYW5kbGUgb2YgYSBub2RlIGNvbnRhaW5zIHRoZSBnZW5lcmlj
IHBpbmNvbmZpZyBvcHRpb25zCj4+ICAgICAgICAgICAgICAgICAgIHRvIHVzZSBhcyBkZXNjcmli
ZWQgaW4gcGluY3RybC1iaW5kaW5ncy50eHQuCj4+ICAgCj4+ICsgICAgICByb2NrY2hpcCxybWlv
LXBpbnM6Cj4+ICsgICAgICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25z
L3VpbnQzMi1tYXRyaXgKPj4gKyAgICAgICAgbWluSXRlbXM6IDEKPj4gKyAgICAgICAgaXRlbXM6
Cj4+ICsgICAgICAgICAgaXRlbXM6Cj4+ICsgICAgICAgICAgICAtIG1pbmltdW06IDAKPiBUaGF0
J3MgcmVkdW5kYW50LiAwIGlzIGFscmVhZHkgbWluaW11bS4KSSB3aWxsIHJlbW92ZSBpdCBpbiB2
NQo+PiArICAgICAgICAgICAgICBkZXNjcmlwdGlvbjogUk1JTyBJRCAoQ29udHJvbGxlciBpbmRl
eCkKPiBXaHkgZG8geW91IG5lZWQgdGhpcz8gSXMgdGhpcyBwaW4gY29udHJvbGxlciBoYXZpbmcg
bXVsdGlwbGUgUk1JTyBJRHM/Cj4gTm90aGluZyBsaWtlIHRoYXQgd2FzIGV4cHJlc3NlZCBpbiBw
cmV2aW91cyBEVFMuIE5vIG90aGVyIElEcyBhcmUKPiBwcmVzZW50IGluIHRoaXMgRFRTLCBlaXRo
ZXIuLi4KClRoZSBSTUlPIGhhcmR3YXJlIElQIGl0c2VsZiBpcyBkZXNpZ25lZCB0byBzdXBwb3J0
IG11bHRpcGxlIGluc3RhbmNlcy4gCkFsdGhvdWdoIHRoZSBSSzM1MDYgb25seSBpbnRlZ3JhdGVz
IG9uZSBpbnN0YW5jZSwgb3RoZXIgY2hpcHMgKGxpa2UgdGhlIApSSzIxMTYpIGFscmVhZHkgdXRp
bGl6ZSBtdWx0aXBsZSBSTUlPIGJsb2Nrcy4KCldlIHdhbnQgdG8gZGVmaW5lIHRoZSBiaW5kaW5n
IGJhc2VkIG9uIHRoZSBjYXBhYmlsaXRpZXMgb2YgdGhlIElQIGJsb2NrIApyYXRoZXIgdGhhbiB0
aGUgc3BlY2lmaWMgY29uZmlndXJhdGlvbiBvZiB0aGUgUkszNTA2LiBUaGlzIGVuc3VyZXMgdGhl
IApiaW5kaW5nIGZvcm1hdCAoMyBjZWxscykgcmVtYWlucyBzdGFibGUgd2hlbiBzdXBwb3J0IGZv
ciBtdWx0aS1STUlPIFNvQ3MgCmlzIGFkZGVkIHRvIExpbnV4IGluIHRoZSBmdXR1cmUsIGF2b2lk
aW5nIHRoZSBuZWVkIHRvIGhhbmRsZSBkaWZmZXJlbnQgCmNlbGwgZm9ybWF0cyBpbiB0aGUgZHJp
dmVyLgoKV2UgcHJlZmVyIHRvIGtlZXAgdGhlIElEIGNvbHVtbiAoZml4ZWQgdG8gMCBmb3IgUksz
NTA2KSBmb3IgdGhpcyBmb3J3YXJkIApjb21wYXRpYmlsaXR5LgoKSXMgdGhpcyBhY2NlcHRhYmxl
PwoKPj4gKyAgICAgICAgICAgIC0gbWluaW11bTogMAo+PiArICAgICAgICAgICAgICBkZXNjcmlw
dGlvbjogUGluIGluZGV4IHdpdGhpbiB0aGUgUk1JTyBjb250cm9sbGVyCj4+ICsgICAgICAgICAg
ICAtIG1pbmltdW06IDAKPj4gKyAgICAgICAgICAgICAgZGVzY3JpcHRpb246IEZ1bmN0aW9uIE11
eCBJRAo+PiArICAgICAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgICAgICBDb25maWd1cmF0aW9u
IGZvciB0aGUgUm9ja2NoaXAgTWF0cml4IEkvTyAoUk1JTykgYmxvY2suIFRoZSBmb3JtYXQKPj4g
KyAgICAgICAgICBpcyA8cm1pb19pZCBwaW5faWQgZnVuY3Rpb25faWQ+LiBUaGlzIGFjdHMgYXMg
YSBzZWNvbmRhcnkgbXV4aW5nCj4+ICsgICAgICAgICAgbGF5ZXIgd2hlbiB0aGUgcHJpbWFyeSAn
cm9ja2NoaXAscGlucycgbXV4IGlzIHNldCB0byB0aGUgUk1JTwo+PiArICAgICAgICAgIGZ1bmN0
aW9uLgo+PiArCj4+ICAgZXhhbXBsZXM6Cj4+ICAgICAtIHwKPj4gICAgICAgI2luY2x1ZGUgPGR0
LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPj4gLS0gCj4+IDIuMzQu
MQo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
