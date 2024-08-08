Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB5FDC52D71
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 10:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6NY8rGO4q7+rtn7c95NXuS8cKGzE5T1yWEf1UcscdeE=; b=eHbnJqocpNXJT8
	IeKoQ7SnEZV7B4/+FKwInPCdPiajo43sP98mgAlOui1mVomVHSll/rbMFwukHeqbIsTL2pmeP2wwS
	c0qObSurgHuILaFlkwqH2m9YvOXQ+PpSwl8mQVWXFnxuhy1TpHTjbWFE1vft2wsKbG+exR47/rZ33
	ZQMaVtpoBP6f166jWgWHHqH0pD8aPK2UG+YIEE0VOBbR0iX3zFujkY8g4S+vVVSpyLvUJi8OFdY8b
	7fA+3K90TOw0P6tYk0YywBZFYyz+QnUBqgd6ealz8AIYTsvE+yBkPT4KBiOh0RkeyPoJiUIsMAPMe
	qtnzX+scekhulqzSEj7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc0Ne-00000007tdx-2pam;
	Thu, 08 Aug 2024 10:28:26 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc0Na-00000007tYz-1KHM
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 10:28:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 86541CE1377;
	Thu,  8 Aug 2024 10:28:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33E4BC32782;
	Thu,  8 Aug 2024 10:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723112899;
	bh=intYcQDbZsn2duAHXMXmHdLSGdw1MRwxV58NXdIotYQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PjNgDEl4VsgNp09L6gVKrUAccTmXQpKIs3m6TAgrqoQTxj+2iqlQdf6AuxfJsEiPC
	 hPE5nkoHs8iOvRk02r+AAu91mz80+2arhy5ca76muzSwF6hs70XJcfuSLM56TgTTW+
	 kdKs8HsYfqNXdfq0EhAs2vGzYCMoWw5pO77FhWYiWc6Sx4z4OsoqYqWSpe7+SimLVZ
	 lPKvNGdpX1sDzs6UOAjZdSzgu8UDl2fnBo6GrIdPDQH4PfgwYa8mR/Wk5AjbXrKp/n
	 NM8iFftJrzM70Z1PaR1qf2qXgg5OpvTbeDkf9oCu7tOsiGZJVsSzLOVYPG6BMlbZHH
	 pbhoObXLFrRMQ==
Message-ID: <2975fb46-6145-4da3-8d8a-41f5d35db90c@kernel.org>
Date: Thu, 8 Aug 2024 12:28:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: ufs: Document Rockchip UFS host
 controller
To: Shawn Lin <shawn.lin@rock-chips.com>, "Rob Herring (Arm)"
 <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, Liang Chen <cl@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Conor Dooley <conor+dt@kernel.org>, Bart Van Assche <bvanassche@acm.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 YiFeng Zhao <zyf@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Avri Altman <avri.altman@wdc.com>,
 linux-scsi@vger.kernel.org
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
 <1723089163-28983-3-git-send-email-shawn.lin@rock-chips.com>
 <172309498853.3975217.8775988957925335272.robh@kernel.org>
 <659b9e09-b98d-48e0-ad0f-bfb2fe2148bc@rock-chips.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <659b9e09-b98d-48e0-ad0f-bfb2fe2148bc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_032822_737971_1AE740A7 
X-CRM114-Status: GOOD (  12.87  )
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

T24gMDgvMDgvMjAyNCAwODoxMCwgU2hhd24gTGluIHdyb3RlOgo+IEhpIFJvYgo+IAo+IOWcqCAy
MDI0LzgvOCAxMzoyOSwgUm9iIEhlcnJpbmcgKEFybSkg5YaZ6YGTOgo+Pgo+PiBPbiBUaHUsIDA4
IEF1ZyAyMDI0IDExOjUyOjQyICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4+PiBEb2N1bWVudCBS
b2NrY2hpcCBVRlMgaG9zdCBjb250cm9sbGVyIGZvciBSSzM1NzYgU29DLgo+Pj4KPj4+IFNpZ25l
ZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+Pj4KPj4+IC0t
LQo+Pj4KPj4+IENoYW5nZXMgaW4gdjI6Cj4+PiAtIHJlbm1hZSBmaWxlIG5hbWUKPj4+IC0gZml4
IGFsbCBlcnJvcnMgYW5kIHBhc3MgdGhlIGR0X2JpbmRpbmdfY2hlY2s6Cj4+PiAgICBtYWtlIGR0
X2JpbmRpbmdfY2hlY2sgRFRfU0NIRU1BX0ZJTEVTPXJvY2tjaGlwLHJrMzU3Ni11ZnMueWFtbAo+
Pj4KPj4+ICAgLi4uL2JpbmRpbmdzL3Vmcy9yb2NrY2hpcCxyazM1NzYtdWZzLnlhbWwgICAgICAg
ICAgfCA5NiArKysrKysrKysrKysrKysrKysrKysrCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCA5NiBp
bnNlcnRpb25zKCspCj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvdWZzL3JvY2tjaGlwLHJrMzU3Ni11ZnMueWFtbAo+Pj4KPj4KPj4gTXkg
Ym90IGZvdW5kIGVycm9ycyBydW5uaW5nICdtYWtlIGR0X2JpbmRpbmdfY2hlY2snIG9uIHlvdXIg
cGF0Y2g6Cj4+Cj4+IHlhbWxsaW50IHdhcm5pbmdzL2Vycm9yczoKPj4KPj4gZHRzY2hlbWEvZHRj
IHdhcm5pbmdzL2Vycm9yczoKPj4gL2J1aWxkcy9yb2JoZXJyaW5nL2R0LXJldmlldy1jaS9saW51
eC9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3JvY2tjaGlwLHJrMzU3Ni11
ZnMueWFtbDogJGlkOiBDYW5ub3QgZGV0ZXJtaW5lIGJhc2UgcGF0aCBmcm9tICRpZCwgcmVsYXRp
dmUgcGF0aC9maWxlbmFtZSBkb2Vzbid0IG1hdGNoIGFjdHVhbCBwYXRoIG9yIGZpbGVuYW1lCj4+
ICAgCSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Vmcy9yb2NrY2hpcCx1ZnMu
eWFtbAo+PiAgIAlmaWxlOiAvYnVpbGRzL3JvYmhlcnJpbmcvZHQtcmV2aWV3LWNpL2xpbnV4L0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcm9ja2NoaXAscmszNTc2LXVmcy55
YW1sCj4gCj4gVGhpcyBpcyBhbHJlYWR5IGZpeGVkIGJ5IGEgcmVzZW5kIHYyIDIvMyBwYXRjaCwg
YSBtb21lbnQgYWdvLiBTb3JyeSBmb3IgCj4gdGhhdC4KCklmIHlvdSBjaGFuZ2UgcGF0Y2hlcywg
aXQgaXMgbm90IGEgcmVzZW5kLiBTZW5kIGEgcHJvcGVyIG5ldyB2ZXJzaW9uCndpdGggcHJvcGVy
IGNoYW5nZWxvZy4KCj4gCj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMv
cm9ja2NoaXAscmszNTc2LXVmcy5leGFtcGxlLmR0czoyNDoxODogZmF0YWwgZXJyb3I6IGR0LWJp
bmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU3Ni1jcnUuaDogTm8gc3VjaCBmaWxlIG9yIGRpcmVj
dG9yeQo+PiAgICAgMjQgfCAgICAgICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9yb2Nr
Y2hpcCxyazM1NzYtY3J1Lmg+Cj4+ICAgICAgICB8ICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPj4gY29tcGlsYXRpb24gdGVybWluYXRl
ZC4KPiAKPiBUaGVyZSBhcmUgc3RpbGwgcGVuZGluZyBwYXRjaGVzIGZyb20gUm9ja2NoaXAgaW4g
cXVldWUgZm9yIHJldmlldy4gVGhpcwo+IHBhdGNoc2V0IGlzIGJhc2VkIG9uIHRoZW0uIEkgd2ls
bCB3YWl0IGZvciBtb3JlIGNvbW1lbnRzIGFuZCB1cGRhdGUgdGhlbQo+IGFmdGVyIGFsbCB1bmRl
ci1yZXZpZXcgcGF0Y2hlcyBnb3QgbWVyZ2VkLgoKWW91IG5lZWQgdG8gZG9jdW1lbnQgZGVwZW5k
ZW5jaWVzIGluIGNoYW5nZWxvZyAoLS0tKS4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
