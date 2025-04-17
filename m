Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07C11C369B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 07:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3sKoWJBv+fw+vMqiHtP630Ix3kI7R7qh6IaZpU0f6YE=; b=hSlBYlcMhYKUXb
	hgaCz/455+bmSIYH39/F7qqA1kBkeYboR4A0wwSvPijWvDp8C6BViQ68TdWDPW7E4Hb/EWeWlwmn0
	bD35mNi1lcGI4XTLF6q7vH3esSIxKJ2UKHCydvpwa4SScjkbwmflONdvhn040/j1pkIDveN8BsOcG
	u/pAI172qMoa288wuiAseFEukWZLsRsn9VPadYmbttZcE44dmLwWU8OQUxJkdRZrhHxUEzIQf/2Aw
	EDnBpO6Q5jD/ogntOTSg9kuZIpbPcinSmpFrPPZH7208m+vcyy7lerWPljZLdIgq8DvpVpCKi2ilR
	ktchusGvlMUUVvBHEoAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Jd8-0000000C5Hu-2TRs;
	Thu, 17 Apr 2025 07:25:50 +0000
Received: from mail-m19731108.qiye.163.com ([220.197.31.108])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Jd5-0000000C5EU-1DFC;
	Thu, 17 Apr 2025 07:25:49 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1233a2cdc;
	Thu, 17 Apr 2025 15:25:41 +0800 (GMT+08:00)
Message-ID: <ca283065-a48c-3b39-e70d-03d4c6c8a956@rock-chips.com>
Date: Thu, 17 Apr 2025 15:25:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Cc: shawn.lin@rock-chips.com, lpieralisi@kernel.org, kw@linux.com,
 bhelgaas@google.com, heiko@sntech.de, manivannan.sadhasivam@linaro.org,
 robh@kernel.org, jingoohan1@gmail.com, thomas.richard@bootlin.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH] PCI: dw-rockchip: Configure max payload size on host init
To: Hans Zhang <18255117159@163.com>
References: <20250416151926.140202-1-18255117159@163.com>
 <aACoEpueUHBLjgbb@ryzen>
 <85643fe4-c7df-4d64-e852-60b66892470a@rock-chips.com>
 <aACsJPkSDOHbRAJM@ryzen>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aACsJPkSDOHbRAJM@ryzen>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkkfT1YYGh0YQ0tPThpJQ0NWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9642a3a11e09cckunm1233a2cdc
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRg6EAw*LjJCHhAsNQ8ZDjkt
	VisKFDJVSlVKTE9PQ0xPTE9IQ09PVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhMTEM3Bg++
DKIM-Signature: a=rsa-sha256;
	b=ItIT98LNpFdr+LN3qpvVBueCPohPToRuA3M+VFYxIN+pTgbAm25/vWhApyWFMy6oxAlqpC5i2wsE8inB6fXgXukULBFpKhVNw/hwUlSwtJdC2pnQ4CGrv6rga/mrw18V1sF3k2TDLCkgFJgGpv1q2IgXyb84yN8ZCw95ludXhfI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=B6iTx3Lr3Y/E/h3fgZVym20bL7MC/yae8ZyHNmoM91E=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_002547_498799_A63BF2ED 
X-CRM114-Status: GOOD (  12.54  )
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

5ZyoIDIwMjUvMDQvMTcg5pif5pyf5ZubIDE1OjIyLCBOaWtsYXMgQ2Fzc2VsIOWGmemBkzoKPiBP
biBUaHUsIEFwciAxNywgMjAyNSBhdCAwMzowODozNFBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6
Cj4+IOWcqCAyMDI1LzA0LzE3IOaYn+acn+WbmyAxNTowNCwgTmlrbGFzIENhc3NlbCDlhpnpgZM6
Cj4+PiBIZWxsbyBIYW5zLAo+Pj4KPj4+IE9uIFdlZCwgQXByIDE2LCAyMDI1IGF0IDExOjE5OjI2
UE0gKzA4MDAsIEhhbnMgWmhhbmcgd3JvdGU6Cj4+Pj4gVGhlIFJLMzU4OCdzIFBDSWUgY29udHJv
bGxlciBkZWZhdWx0cyB0byBhIDEyOC1ieXRlIG1heCBwYXlsb2FkIHNpemUsCj4+Pj4gYnV0IGl0
cyBoYXJkd2FyZSBjYXBhYmlsaXR5IGFjdHVhbGx5IHN1cHBvcnRzIDI1NiBieXRlcy4gVGhpcyBy
ZXN1bHRzCj4+Pj4gaW4gc3Vib3B0aW1hbCBwZXJmb3JtYW5jZSB3aXRoIGRldmljZXMgdGhhdCBz
dXBwb3J0IGxhcmdlciBwYXlsb2Fkcy4KPj4+Cj4+PiBQYXRjaCBsb29rcyBnb29kIHRvIG1lLCBi
dXQgcGxlYXNlIGFsd2F5cyByZWZlcmVuY2UgdGhlIFRSTSB3aGVuIHlvdSBjYW4uCj4+Pgo+Pj4g
QmVmb3JlIHRoaXMgcGF0Y2g6Cj4+PiAJCURldkNhcDogTWF4UGF5bG9hZCAyNTYgYnl0ZXMKPj4+
IAkJRGV2Q3RsOiBNYXhQYXlsb2FkIDEyOCBieXRlcwo+Pj4KPj4+Cj4+PiBBcyBwZXIgcmszNTg4
IFRSTSwgc2VjdGlvbiAiMTEuNC4zLjggRFNQX1BDSUVfQ0FQIERldGFpbCBSZWdpc3RlcnMgRGVz
Y3JpcHRpb24iCj4+Pgo+Pj4gRGV2Q2FwIGlzIHBlciB0aGUgcmVnaXN0ZXIgZGVzY3JpcHRpb24g
b2YgRFNQX1BDSUVfQ0FQX0RFVklDRV9DQVBBQklMSVRJRVNfUkVHLAo+Pj4gZmllbGQgUENJRV9D
QVBfTUFYX1BBWUxPQURfU0laRS4KPj4+IFdoaWNoIGNsYWltcyB0aGF0IHRoZSB2YWx1ZSBhZnRl
ciByZXNldCBpcyAweDEgKDI1NkIpLgo+Pj4KPj4+IERldkN0bCBpcyBwZXIgdGhlIHJlZ2lzdGVy
IGRlc2NyaXB0aW9uIG9mCj4+PiBEU1BfUENJRV9DQVBfREVWSUNFX0NPTlRST0xfREVWSUNFX1NU
QVRVUywgZmllbGQgUENJRV9DQVBfTUFYX1BBWUxPQURfU0laRV9DUy4KPj4+IFdoaWNoIGNsYWlt
cyB0aGF0IHRoZSByZXNldCB2YWx1ZSBpcyAweDAgKDEyOEIpLgo+Pj4KPj4+IEJvdGggb2YgdGhl
c2UgbWF0Y2ggdGhlIHZhbHVlcyBhYm92ZS4KPj4+Cj4+PiBBcyBwZXIgdGhlIGRlc2NyaXB0aW9u
IG9mIFBDSUVfQ0FQX01BWF9QQVlMT0FEX1NJWkVfQ1M6Cj4+PiAiUGVybWlzc2libGUgdmFsdWVz
IHRoYXQKPj4+IGNhbiBiZSBwcm9ncmFtbWVkIGFyZSBpbmRpY2F0ZWQgYnkgdGhlIE1heF9QYXls
b2FkX1NpemUKPj4+IFN1cHBvcnRlZCBmaWVsZCAoUENJRV9DQVBfTUFYX1BBWUxPQURfU0laRSkg
aW4gdGhlIERldmljZQo+Pj4gQ2FwYWJpbGl0aWVzIChERVZJQ0VfQ0FQQUJJTElUSUVTX1JFRykg
cmVnaXN0ZXIgKGZvciBtb3JlCj4+PiBkZXRhaWxzLCBzZWUgc2VjdGlvbiA3LjUuMy4zIG9mIFBD
SSBFeHByZXNzIEJhc2UgU3BlY2lmaWNhdGlvbikuIgo+Pj4KPj4+IFNvIHlvdXIgcGF0Y2ggbG9v
a3MgZ29vZC4KPj4+Cj4+PiBJIGd1ZXNzIEknbSBtb3N0bHkgc3VycHJpc2VkIHRoYXQgdGhlIGUu
Zy4gcGNpX2NvbmZpZ3VyZV9tcHMoKSBkb2VzIG5vdAo+Pj4gYWxyZWFkeSBzZXQgRGV2Q3RsIHRv
IHRoZSBtYXgoRGV2Q2FwLk1QUyBvZiB0aGUgaG9zdCwgRGV2Q2FwLk1QUyBvZiB0aGUKPj4+IGVu
ZHBvaW50KS4KPj4+Cj4+PiBBcHBhcmVudGx5IHBjaV9jb25maWd1cmVfbXBzKCkgb25seSBkZWNy
ZWFzZXMgTVBTIGZyb20gdGhlIHJlc2V0IHZhbHVlcz8KPj4+IEl0IG5ldmVyIGluY3JlYXNlcyBp
dD8KPj4+Cj4+Cj4+IEFjdHVhbGx5IGl0IGRvZXM6Cj4+Cj4+IGh0dHBzOi8vZ2l0aHViLmNvbS90
b3J2YWxkcy9saW51eC9ibG9iL21hc3Rlci9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tlcm5l
bC1wYXJhbWV0ZXJzLnR4dCNMNDc1Nwo+IAo+IElmIHRoYXQgaXMgdGhlIGNhc2UsIHRoZW4gZXhw
bGFpbiB0aGUgYmVmb3JlL2FmdGVyIHdpdGggSGFucyBsc3BjaSBvdXRwdXQgaGVyZToKPiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1wY2kvYmI0MDM4NWMtNjgzOS00ODRjLTkwYjItZDZj
N2VjYjk1YmE5QDE2My5jb20vCj4gCj4gSGlzIHBhdGNoIGNoYW5nZXMgdGhlIGRlZmF1bHQgdmFs
dWUgb2YgRGV2Q3RsLk1QUyAoZnJvbSAxMjhCIHRvIDI1NkIpLCBidXQgaWYKPiBwY2lfY29uZmln
dXJlX21wcygpIGNhbiBidW1wIERldkN0bC5NUFMgdG8gYSBoaWdoZXIgdmFsdWUsIGhpcyBwYXRj
aCBzaG91bGQgbm90Cj4gYmUgbmVlZGVkLCBzaW5jZSB0aGUgRVAgKGFuIE5WTWUgU1NEIGluIGhp
cyBjYXNlKSBoYXMgRGV2Q2FwLk1QUyA1MTJCLCBhbmQgdGhlCj4gUkMgaXRzZWxmIGhhcyBEZXZD
YXAuTVBTIDI1NkIuCj4gCj4gU2VlbXMgbGlrZSB3ZSBhcmUgbWlzc2luZyBzb21ldGhpbmcgaGVy
ZS4KClNvIEhhbnMsIGNvdWxkIHlvdSBwbGVhc2UgaGVscCBzZXQgcGNpPXBjaWVfYnVzX3NhZmUg
b3IKcGNpPXBjaWVfYnVzX3BlcmYgaW4geW91ciBjbWRsaW5lLCBhbmQgc2VlIGhvdyBsc3BjaSBk
dW1wIGRpZmZlcmVudAp3aXRob3V0IHlvdXIgcGF0Y2g/Cgo+IAo+IAo+IEtpbmQgcmVnYXJkcywK
PiBOaWtsYXMKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
