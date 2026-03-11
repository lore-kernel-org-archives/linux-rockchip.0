Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75B2F1125809
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 13:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=29q/cqC5O/zjCy1P+FdMutGxW0/+6QlDyJ1J7vRIX4w=; b=RYr0Nw7aUT9WOKbUFz2zo3Vl9M
	74F42xM4Luy30lCZOK/x/J0ratcY8Wp70XQanCxcYEZBlZwcSpaQ/ZpzS83K5PKeDFtQf8mFnx02K
	CXqErhyVBYJsqpUrgi7pcynAurC2avdlTlrD3Ej5GdU16YHqfxtyMmx5Po3jS7egHPVzXka5o3ng5
	x4K8RBoj6D9zXAJwU7icwXExGHF5xY5ceIfxO+iJ+oDwOgv0HWVbyfpCBC5N9tdoSKSATYaVIGwEX
	VtSX1kGSbT1C3ccalW6bkNUUK1da9dzLK8qiM0OsnOnrWXxvpx7LmeWdjE5IrLfF3n0Dav9J5LrzF
	t5qDx0BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0JdP-0000000BeA6-3dNk;
	Wed, 11 Mar 2026 13:29:59 +0000
Received: from mail-m19731115.qiye.163.com ([220.197.31.115])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0JdM-0000000Be9O-1u4E
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 13:29:59 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3692741de;
	Wed, 11 Mar 2026 21:29:46 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] scsi: ufs: drockchip,rk3576-ufshc: dt-bindings: Add
 new mphy reset item
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <1773193218-215988-1-git-send-email-shawn.lin@rock-chips.com>
 <1773193218-215988-2-git-send-email-shawn.lin@rock-chips.com>
 <20260311-ultraviolet-shrew-of-management-ca536b@quoll>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <6d4e61eb-0b1b-c61f-faba-f790774b6cec@rock-chips.com>
Date: Wed, 11 Mar 2026 21:29:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260311-ultraviolet-shrew-of-management-ca536b@quoll>
X-HM-Tid: 0a9cdd16d2cf09cckunm38650987127e6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh8YGlZJQxhLGE0YS0tMSEtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=VyrwhSQjgF4MFS8VWaLpm2i8qJDXusKWPb55KonMghZio0yDfXYgY8Zc2oj8WjB8Fa8eouMMmKFPVp0lqCxt1iWp9xUHstYQFTSCliOS0BGANRTOrqGfHFNibOf1RB69t4gR9nU58jigNX7mB1P7kWIjoRU+rV72bkZJHUjqdwY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=F8pt31l0VsJfdCSmcYNuEWgW6arHaqOf4wSdISGjeAw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_062957_827016_0F8B04DC 
X-CRM114-Status: GOOD (  19.02  )
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

SGkgS3J6eXN6dG9mCgrlnKggMjAyNi8wMy8xMSDmmJ/mnJ/kuIkgMjE6MTAsIEtyenlzenRvZiBL
b3psb3dza2kg5YaZ6YGTOgo+IE9uIFdlZCwgTWFyIDExLCAyMDI2IGF0IDA5OjQwOjE3QU0gKzA4
MDAsIFNoYXduIExpbiB3cm90ZToKPj4gQWRkIHRoZSBtcGh5IHJlc2V0IHByb3BlcnR5IHRvIHRo
ZSBkZXZpY2V0cmVlIGJpbmRpbmdzIGZvciB0aGUgUm9ja2NoaXAKPj4gUkszNTc2IFVGUyBob3N0
IGNvbnRyb2xsZXIuIFRoZSBtcGh5IHJlc2V0IHNpZ25hbCBpcyB1c2VkIHRvIHJlc2V0IHRoZQo+
PiBwaHlzaWNhbCBhZGFwdGVyLiBSZXNldHRpbmcgb3RoZXIgY29tcG9uZW50cyB3aGlsZSBsZWF2
aW5nIHRoZSBtcGh5Cj4+IHVucmVzZXQgbWF5IG9jY2FzaW9uYWxseSBwcmV2ZW50IHRoZSBVRlMg
Y29udHJvbGxlciBmcm9tIHN1Y2Nlc3NmdWxseQo+PiBsaW5raW5nIHVwIHdpdGggdGhlIGRldmlj
ZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5j
b20+Cj4+IC0tLQo+Pgo+PiAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMv
cm9ja2NoaXAscmszNTc2LXVmc2hjLnlhbWwgfCA3ICsrKystLS0KPj4gICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9yb2NrY2hpcCxyazM1NzYtdWZzaGMu
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcm9ja2NoaXAscmsz
NTc2LXVmc2hjLnlhbWwKPj4gaW5kZXggYzdkMTdjZjQuLmU3MzgxNTMgMTAwNjQ0Cj4+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcm9ja2NoaXAscmszNTc2LXVm
c2hjLnlhbWwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9y
b2NrY2hpcCxyazM1NzYtdWZzaGMueWFtbAo+PiBAQCAtNDEsNyArNDEsNyBAQCBwcm9wZXJ0aWVz
Ogo+PiAgICAgICBtYXhJdGVtczogMQo+PiAgIAo+PiAgICAgcmVzZXRzOgo+PiAtICAgIG1heEl0
ZW1zOiA0Cj4+ICsgICAgbWF4SXRlbXM6IDUKPj4gICAKPj4gICAgIHJlc2V0LW5hbWVzOgo+PiAg
ICAgICBpdGVtczoKPj4gQEAgLTQ5LDYgKzQ5LDcgQEAgcHJvcGVydGllczoKPj4gICAgICAgICAt
IGNvbnN0OiBzeXMKPj4gICAgICAgICAtIGNvbnN0OiB1ZnMKPj4gICAgICAgICAtIGNvbnN0OiBn
cmYKPj4gKyAgICAgIC0gY29uc3Q6IG1waHkKPiAKPiBBQkkgYnJlYWsgaGVyZSBhbmQgaW4gdGhl
IGRyaXZlci4gQ29uc2lkZXJpbmcgdGhpcyB3YXMgbWVyZ2VkIHllYXIgYWdvLAo+IHNvIGZvciBz
dXJlIGl0IHdhcyB0ZXN0ZWQgYW5kIHdhcyB3b3JraW5nLiBPdGhlcndpc2UgY29tbWl0IG1zZyB3
b3VsZAo+IGV4cGxhaW4gdGhlIGFjdHVhbCBidWcgYWZmZWN0aW5nIHVzZXJzLgo+IAoKVGhhbmtz
IGZvciB5b3VyIHJldmlldy4KCllvdSBhcmUgYWJzb2x1dGVseSByaWdodCB0aGF0IHRoaXMgY2hh
bmdlIHRlY2huaWNhbGx5IGJyZWFrcyB0aGUgQUJJIGluCnRoZSBkZXZpY2UgdHJlZSBiaW5kaW5n
cyBieSBpbmNyZWFzaW5nIG1heEl0ZW1zIGFuZCBhZGRpbmcgYSBuZXcgZW50cnkuCkFsdGhvdWdo
IHRoZSBkcml2ZXIgaXMgdXNpbmcgZGV2bV9yZXNldF9jb250cm9sX2FycmF5X2dldF9leGNsdXNp
dmUoKSwKc28gdGhlIG9sZCBEVEIgYW5kIG5ldyBEVEIgc2hvdWxkIGJvdGggd29yay4KClRoZSBp
c3N1ZSB0aGlzIHNlcmllcyBmaXhlcyAoVUZTIGxpbmstdXAgZmFpbHVyZSB3aGVuIG1waHkgaXMg
bm90CmV4cGxpY2l0bHkgcmVzZXQpIGlzIGFuIGludGVybWl0dGVudCBoYXJkd2FyZSBidWcgdGhh
dCBpcyBkaWZmaWN1bHQgdG8KcmVwcm9kdWNlLiBJdCBvbmx5IG9jY3VycyB1bmRlciBzcGVjaWZp
YyB0aW1pbmcgY29uZGl0aW9ucyB3aXRoIGNlcnRhaW4KY2hpcHMuIFdlIHJlY2VudGx5IGVuY291
bnRlcmVkIHRoaXMgaXNzdWUgY29uc2lzdGVudGx5IGluIG91ciBkb3duc3RyZWFtCnRlc3Rpbmcg
YW5kIGlkZW50aWZpZWQgdGhlIHJvb3QgY2F1c2UuIFdlIGFyZSBzeW5jaW5nIHRoaXMgY3JpdGlj
YWwgZml4CnRvIHVwc3RyZWFtIGltbWVkaWF0ZWx5IHRvIHByZXZlbnQgc3RhYmlsaXR5IGlzc3Vl
cyBmb3IgdXNlcnMuIEkgd2lsbAp1cGRhdGUgdGhlIGNvbW1pdCBtZXNzYWdlIHRvIGV4cGxpY2l0
bHkgZGVzY3JpYmUgdGhpcyBoYXJkLXRvLXJlcHJvZHVjZQpidWcgYW5kIHRoZSBzcGVjaWZpYyBm
YWlsdXJlIG1vZGUsIGFuZCBwcm9iYWJseSBhZGQgYSBmaXhlcyB0YWcuCgpEb2VzIHRoZSBhYm92
ZSBzb3VuZCB0aGUgcmlnaHQgYXBwcm9hY2ggdG8geW91PwoKCj4gQmVzdCByZWdhcmRzLAo+IEty
enlzenRvZgo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
