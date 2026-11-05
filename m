Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A02C606A337
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 12:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UWPu8ChU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=R+XDdZWS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=S3DbrInFG0AoX5XtXuT6ypXSGsz+1SmvVdAg9ZnOyg8=; b=UWPu8ChU/cMdW9SEG9iuT9pnlv
	iDfQKAjFPwNw30LA59Gy7/ZyCHVd7gDUuQ/5LwwuAh0/zGDx9kE6eLjIwR8av4FiLhGlbh92Har6T
	QCbZx1Qsnc6cR97Ip9umvyRJib9ipxGqsH6+sOuIQF7WDjiD0rb+YnKYBmLZK9CHxm/I/oz3E60U2
	XBziGgUbZL4CKKgFZiey+muNZ0RqYHifrdC1AlfNvWeXyn61M88+JQ7HNEIdJgARrkqYpAnaeZhDN
	H5CVUt+pnGEELr1VrNvuaUTHaUN8Cv8ngPi/uRnOeUJkMIGDIbz+jEYjLtY5841tRM/88WK0r/VFK
	Qh92CeXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwUx-00000008vQk-0YmM;
	Thu, 05 Nov 2026 12:23:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwUs-00000008vPc-43TG;
	Thu, 05 Nov 2026 12:23:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0DF2A61105;
	Thu,  5 Nov 2026 12:23:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF9491F000C1;
	Thu,  5 Nov 2026 12:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793881393;
	bh=AaiS4Lhu3Gc12pXmISRStNRQ98+XBetbUVdlh6qdn2I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=R+XDdZWSeB01xzdwaOgG3108M/kGN83vSH7Ry40EEjvC+GKicYKAkwW91XAjvSZlk
	 5JRslvcVNnIEyl4Sf/XtbNmRvI4d69Q5qDhBHjg/2vTsFaymBRcJFR5OF3xbb7wZK+
	 kc0ZYIpS7oV+iUImBLR9NtioBe8scemTIB9mjZSAM9O9QbuRdhCA6zApbGmdp0n5F6
	 m7yIXTuCvBc8xDRn20AgNvPT/UNwy79JvGCGiu21CXpXI/PKBUQ5dn1A4a+2YO7W6I
	 U09+FKgesD61ti7ug40xWZtrAH6Ke0YY8I2+FCY4Y6ZVpYWaSYyA2trPArpkSxvWZs
	 FteFHx6FP0IeA==
Date: Thu, 5 Nov 2026 13:23:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Enrique =?utf-8?Q?Hern=C3=A1ndez?= Bello <ehbello@gmail.com>
Cc: shawn.lin@rock-chips.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, bhelgaas@google.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, dlemoal@kernel.org, 
	iav@iav.lv, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: PCI: rockchip,rk3399-pcie: Add
 PERST# inactive delay properties
Message-ID: <20261105-exuberant-finch-of-domination-3fbd6c@quoll>
References: <20261104215848.2087944-1-ehbello@gmail.com>
 <20261104215848.2087944-2-ehbello@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261104215848.2087944-2-ehbello@gmail.com>
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBOb3YgMDQsIDIwMjYgYXQgMDk6NTg6NDZQTSArMDAwMCwgRW5yaXF1ZSBIZXJuw6Fu
ZGV6IEJlbGxvIHdyb3RlOgo+IFRoZSBkcml2ZXIgaG9sZHMgUEVSU1QjIGFzc2VydGVkIGZvciBU
X1BWUEVSTCAoMTAwIG1zKSBiZWZvcmUgcmVsZWFzaW5nIGl0Lgo+IEVuZHBvaW50cyBkaXNhZ3Jl
ZSBhYm91dCB3aGF0IHRoZXkgd2FudCB0aGVyZTogc29tZSBuZWVkIGxvbmdlciB0aGFuIHRoZQo+
IGRlZmF1bHQgdG8gc2V0dGxlLCB3aGlsZSBvdGhlcnMgc3RvcCBhbnN3ZXJpbmcgY29uZmlndXJh
dGlvbiByZWFkcyB3aGVuIHRoZQo+IHJlc2V0IHB1bHNlIGlzIHN0cmV0Y2hlZCB0aGF0IGZhciwg
YmVjYXVzZSBQRVJTVCMgc3RheXMgYXNzZXJ0ZWQgZm9yIHRoZQo+IHdob2xlIHdhaXQuCj4gCj4g
RGVzY3JpYmUgdHdvIHByb3BlcnRpZXMgc28gYSBib2FyZCBjYW4gc3RhdGUgd2hhdCBpdHMgZW5k
cG9pbnQgbmVlZHMsIG5hbWVkCj4gYWZ0ZXIgdGhlIG9uZXMgdGhlIFJvY2tjaGlwIHZlbmRvciBk
cml2ZXIgYWxyZWFkeSB1c2VzIGZvciB0aGUgZHdjLWJhc2VkCj4gY29udHJvbGxlcnM6CgpWZW5k
b3IgZHJpdmVyIGRvZXMgbm90IG1hdHRlciwgaXQgaXMgYW50aXBhdHRlcm4uIERvIG5vdCBtZW50
aW9uIGl0IGhlcmUKYXMgcmVhc29uIHRvIGRvIHN1Y2ggY2hhbmdlLgoKPiAKPiAgIHJvY2tjaGlw
LHBlcnN0LWluYWN0aXZlLW1zICAgICAgLSB0aGUgZGVsYXkgdXNlZCBhdCBwcm9iZQo+ICAgcm9j
a2NoaXAsczJyLXBlcnN0LWluYWN0aXZlLW1zICAtIHRoZSBkZWxheSB1c2VkIHdoZW4gcmVzdW1p
bmcKCk5vIG5lZWQgdG8gcmVwZWF0IHRoZSBkaWZmLgoKPiAKPiBCb3RoIGFyZSBvcHRpb25hbCBh
bmQgdGhlIGRlZmF1bHRzIHByZXNlcnZlIHRoZSBjdXJyZW50IGJlaGF2aW91ci4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBFbnJpcXVlIEhlcm7DoW5kZXogQmVsbG8gPGVoYmVsbG9AZ21haWwuY29tPgo+
IC0tLQo+ICAuLi4vYmluZGluZ3MvcGNpL3JvY2tjaGlwLHJrMzM5OS1wY2llLnlhbWwgICAgICAg
IHwgMTUgKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCsp
Cj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kv
cm9ja2NoaXAscmszMzk5LXBjaWUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wY2kvcm9ja2NoaXAscmszMzk5LXBjaWUueWFtbAo+IGluZGV4IDcyMGE1ZjkuLjdhYzkx
NWMgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9y
b2NrY2hpcCxyazMzOTktcGNpZS55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BjaS9yb2NrY2hpcCxyazMzOTktcGNpZS55YW1sCj4gQEAgLTQwLDYgKzQwLDIx
IEBAIHByb3BlcnRpZXM6Cj4gICAgICBtYXhJdGVtczogMQo+ICAgICAgZGVzY3JpcHRpb246IHBy
ZS1yZXNldCBHUElPCj4gIAo+ICsgIHJvY2tjaGlwLHBlcnN0LWluYWN0aXZlLW1zOgo+ICsgICAg
ZGVmYXVsdDogMTAwCj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgVGltZSBQRVJTVCMgaXMg
aGVsZCBhc3NlcnRlZCBiZWZvcmUgaXQgaXMgcmVsZWFzZWQsIHdoaWNoIGlzIGFsc28gdGhlCj4g
KyAgICAgIHdpZHRoIG9mIHRoZSByZXNldCBwdWxzZS4gVGhlIGRlZmF1bHQgbWVldHMgVF9QVlBF
UkwgZm9yIGEgc2xvdCB0aGF0Cj4gKyAgICAgIGlzIHBvd2VyZWQgYXQgdGhlIG1vbWVudCBQRVJT
VCMgaXMgYXNzZXJ0ZWQuIFNvbWUgZW5kcG9pbnRzIG5lZWQgbW9yZQo+ICsgICAgICBzZXR0bGlu
ZyB0aW1lIHRoYW4gdGhhdCwgd2hpbGUgb3RoZXJzIHN0b3AgcmVzcG9uZGluZyB3aGVuIHRoZSBw
dWxzZQo+ICsgICAgICBpcyB0aGF0IGxvbmcuIEEgdmFsdWUgb2YgMCBzZWxlY3RzIHRoZSAxMDAg
dXMgbWluaW11bSB0aGUgUENJIEV4cHJlc3MKCnVzIG9yIG1zPwoKPiArICAgICAgQ0VNIHNwZWNp
ZmljYXRpb24gc2V0cyBmb3IgdGhlIHB1bHNlLgoKV2hhdCBpcyB0aGUgbmF0dXJlIG9mIHRoaXMg
dGltaW5nPyAxMDAgbXMgaXMgYSBsb3QuIEFyZSB5b3Ugc3VyZSB5b3UgYXJlCm5vdCBkZXNjcmli
aW5nIFJDIGRlbGF5ICh3ZSBoYXZlIGJpbmRpbmdzIGZvciB0aGF0IGFscmVhZHkpCgpCZXN0IHJl
Z2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
