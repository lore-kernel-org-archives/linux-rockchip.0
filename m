Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99650FC6182
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 20:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1CCeotsC8GtQPPCVeUE/sn7Fe/5bdoarUV9U6AqADic=; b=KfqO6vHIH5If5a
	TjLtkCE0eDld7OirbgCMLlu16p7KVFbOCzaMRZMInEgu3QCheVP2hSqI+Rkuvu1xgO6WTAKIPqmiN
	daFyfhd2g3P37ma82ndgK3r1jUomKhvX4vjTsS3DYISeUGzV6L/T+tohBifvhlpAD6mH0Odgj89KY
	dTlg6YxUVuun68XsYtnBsL1szYuWw6zI87TYEYuMGtfZlSoUuCKEkg2VN2L+LIzyHytpF1/AF++j4
	Ub6/gVP1zZILLdefaB6KL72osV459JKoxrayX5HVrK0ZS8xR4YKHJP/JUDp15A4H8iY886eSuqqMS
	O0qRFSNw6T6LYLit0Gew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vc7xD-00000009lCS-1xWv;
	Sat, 03 Jan 2026 20:10:27 +0000
Received: from mail.mainlining.org ([5.75.144.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vc7xA-00000009lBk-05UG;
	Sat, 03 Jan 2026 20:10:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; s=202507r; d=mainlining.org; c=relaxed/relaxed;
	h=Message-ID:Date:Subject:To:From; t=1767471012; bh=5zS3GPiKua9VdhT2Gn8Zsd5
	LMSooy+BVRaJpFgfl9+s=; b=Ug+sPEiv9fSbDr87P8hJArBBffoTyyAcUfBNo/Ua3aCZeaT0zF
	s76+y9MITczt+7iH4r+EZdi3m0K/CudH6e4S6eEHmLL1qKgQEuYw3a5A6qFLTad3TcTcQ7LUzGn
	eKp73i5k9OsZFgeymMCi0Tkel/t/G1sRfBkIFTOOpVX0SfUMokPBZZsCs3xPkL7/jsEPaM3eEBB
	io3tmYBwFrTrclzgKH8k6xbCf7nKoDaUzECv58tVU3m7A6rj7+McsURPwOjT10bapi+u9M0+Npw
	QkGaTK6aqbHj1FIo9EpH7p22AIpjDT8jrzQ4KIBTL5FATo2I+LQE+ZDmdfbzHcF42CQ==;
DKIM-Signature: v=1; a=ed25519-sha256; s=202507e; d=mainlining.org; c=relaxed/relaxed;
	h=Message-ID:Date:Subject:To:From; t=1767471012; bh=5zS3GPiKua9VdhT2Gn8Zsd5
	LMSooy+BVRaJpFgfl9+s=; b=yoOz5K7aGnqDoUVzRKr4ISO6kGNEoGw44bcvAnrcVyvZwo1fhW
	sUKTfXr4iB40CXJsjmzv8Bwfyl34/1X0QABA==;
From: Dang Huynh <dang.huynh@mainlining.org>
To: Detlev Casanova <detlev.casanova@collabora.com>,
 Olivier =?UTF-8?B?Q3LDqnRl?= <olivier.crete@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Diederik de Haas <diederik@cknow-tech.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dragan Simic <dsimic@manjaro.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH v2 0/3] media: rockchip: rkvdec: add support for the VDPU346
 variant
Date: Sat, 03 Jan 2026 20:10:08 +0000
Message-ID: <8993014.lOV4Wx5bFT@melttower>
In-Reply-To: <20251226113140.573759-1-christianshewitt@gmail.com>
References: <20251226113140.573759-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260103_121024_234026_DE3B6A08 
X-CRM114-Status: GOOD (  22.15  )
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

SGkgQ2hyaXN0aWFuLAoKT24gRnJpZGF5LCBEZWNlbWJlciAyNiwgMjAyNSAxMTozMTozN+KAr0FN
IENvb3JkaW5hdGVkIFVuaXZlcnNhbCBUaW1lIENocmlzdGlhbiAKSGV3aXR0IHdyb3RlOgo+IFRo
aXMgc2VyaWVzIGRlcGVuZHMgdXBvbiBEZXRsZXYgQ2FzYW5vdmEncyBjdXJyZW50IHY3IHNlcmll
cyBmb3IgVkRQVTM4MSBhbmQKPiBWRFBVMzgzIHN1cHBvcnQgWzBdLiBJdCBhZGRzIHN1cHBvcnQg
Zm9yIHRoZSBWRFBVMzQ2IElQIGJsb2NrIHVzZWQgZm9yCj4gSDI2NCwgSEVWQyBhbmQgKGluIGFj
dGl2ZSB3b3JrKSBWUDkgb24gdGhlIFJLMzU2WCBib2FyZHMuIFZEUFUzNDYgYXBwZWFycwo+IHRv
IGJlIGEgY2xvc2UgcmVsYXRpb24gdG8gVkRQVTM4MSB1c2VkIHdpdGggUkszNTg4LCBleGNlcHQg
d2l0aCBhIHNpbmdsZQo+IGNvcmUsIG91dHB1dCBsaW1pdGVkIHRvIDRLLCBhbmQgbWlub3IgZmVh
dHVyZSBkaWZmZXJlbmNlcywgZS5nLiBIRVZDIGxldmVsCj4gNS4xIG9uIFZEUFUzNDYgdnMgNi4x
IG9uIFZEUFUzODEuIFRvIGhhbmRsZSBkaWZmZXJlbmNlcyB3ZSBkZWNsYXJlIGEgbmV3Cj4gY29t
cGF0aWJsZS4KPiAKPiBUaGUgZGV2aWNlLXRyZWUgY2hhbmdlcyBhcmUgZGVyaXZlZCBmcm9tIHBy
aW9yLWFydCBpbiBEZXRsZXYncyBwYXRjaGVzIGZvcgo+IFJLMzU3NiBhbmQgUkszNTg4LCB0aGUg
dmVuZG9yIGtlcm5lbCBbMV0sIGFuZCBzb21lIGVhcmxpZXIgcGF0Y2ggYXR0ZW1wdHMKPiBmcm9t
IFBpb3RyIE9uaXN6Y3p1ayBhbmQgRGllZGVyaWsgZGUgSGFhcy4KPiAKPiBUaGUgcmVnaXN0ZXIg
ZGlmZmVyZW5jZXMgYmV0d2VlbiBWRFBVMzQ2IGFuZCBWRFBVMzgxIGFwcGVhciB0byBiZSBtaW5p
bWFsIHNvCj4gd2UgY3VycmVudGx5IGFuZCBpbnRlbnRpb25hbGx5IHJldXNlIHRoZSBWRFBVMzgx
IGgyNjQsIGhldmMsIGFuZCByZWdzIGZpbGVzCj4gdG8gYXZvaWQgZHVwbGljYXRpbmcgY29kZS4g
VGhlcmUgaXMgc29tZSBldmlkZW5jZSBvZiBidWZmZXIgc2l6ZSBjaGFuZ2VzIGluCj4gdGVzdGlu
ZyB3aGljaCBzdGlsbCBuZWVkIHRvIGJlIGV4cGxvcmVkLiBJZiBmdXJ0aGVyIHJlZ2lzdGVyIGFu
YWx5c2lzIG5lZWRzCj4gc2VwYXJhdGUgZmlsZXMgZm9yIFZEUFUzNDYgdGhlIHJlZmFjdG9yaW5n
IHdpbGwgYmUgYmV5b25kIG15IGN1cnJlbnQgbjAwYgo+IGNvZGluZyBza2lsbHMgYW5kIEkgd2ls
bCBlaXRoZXIgbmVlZCBzb21lIGNvYWNoaW5nIG9yIHdvdWxkIGJlIGhhcHB5IHRvCj4gcGFzcyB0
aGUgc2VyaWVzIG92ZXIgdG8gYSBtb3JlIGV4cGVyaWVuY2VkIGRldmVsb3Blci4KPiAKPiBOQjog
VGVzdGluZyB3aXRoIHRoZSB2MSBzZXJpZXMgc2hvd2VkIGxvd2VyIG1icHMgYml0cmF0ZSBwZXJm
b3JtYW5jZS4gVGhpcwo+IGFwcGVhcnMgdG8gYmUgcmVzb2x2ZWQgdGhvdWdoIGl0J3MgdW5jbGVh
ciB0byBtZSB3aGV0aGVyIHRoaXMgcmVzdWx0cyBmcm9tCj4ga2VybmVsIGNoYW5nZXMgb3IgdGhl
IG9uZ29pbmcgcmV3b3JraW5nIG9mIGZmbXBlZyB2NGwyX3JlcXVlc3Qgc3VwcG9ydCBbMl0uCj4g
SG93ZXZlciB3aXRoIG15IGN1cnJlbnQgTGludXggNi4xOS1yYzIgdGVzdCBicmFuY2ggWzNdIEkn
bSBub3cgYWJsZSB0byBwbGF5Cj4gSmVsbHlmaXNoIEgyNjQgYW5kIEhFVkMgdGVzdCBtZWRpYSBv
dmVyIDEwMG1icHMuCj4gCj4gQ2hhbmdlcyBzaW5jZSB2MToKPiAtIERyb3AgRE8tTk9ULU1FUkdF
IHBhdGNoIGFzIGNoYW5nZXMgaW5jbHVkZWQgaW4gRGV0dmxldiB2NyBzZXJpZXMKPiAtIEFkYXB0
IHRvIHZhcmlhbnQvY2FwYWJpbGl0eSBjaGFuZ2VzIGluIERldGxldidzIHY3IHNlcmllcwo+IC0g
QWRkIGJpbmRpbmdzIGFjayBmcm9tIFJvYgo+IC0gQWRkIHJrdmRlYyBhY2sgZnJvbSBOaWNvbGFz
Cj4gLSBSZWJhc2UgYWdhaW5zdCBMaW51eCA2LjE5LXJjMgo+IAo+IFswXSBodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2NoaXAvbGlzdC8/c2VyaWVzPTEwMzQ3
OTQKPiBbMV0KPiBodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgva2VybmVsL2Jsb2Iv
ZGV2ZWxvcC02LjYvYXJjaC9hcm02NC9ib290L2QKPiB0cy9yb2NrY2hpcC9yazM1NnguZHRzaSNM
MTUzOSBbMl0KPiBodHRwczovL2NvZGUuZmZtcGVnLm9yZy9Ld2lib28vRkZtcGVnL2NvbW1pdHMv
YnJhbmNoL3Y0bDJyZXF1ZXN0LXYzIFszXQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9jaGV3aXR0L2xp
bnV4L2NvbW1pdHMvcm9ja2NoaXAtNi4xOS55Cj4gCj4gQ2hyaXN0aWFuIEhld2l0dCAoMyk6Cj4g
ICBtZWRpYTogZHQtYmluZGluZ3M6IHJvY2tjaGlwOiBBZGQgUkszNTY4IFZpZGVvIERlY29kZXIg
YmluZGluZ3MKPiAgIG1lZGlhOiBya3ZkZWM6IEFkZCBzdXBwb3J0IGZvciB0aGUgVkRQVTM0NiB2
YXJpYW50Cj4gICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIHRoZSB2ZHB1MzQ2IFZpZGVvIERl
Y29kZXJzIG9uIFJLMzU2WAo+IAo+ICAuLi4vYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAsdmRlYy55
YW1sICAgICAgICAgfCAgIDIgKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
eC1iYXNlLmR0c2kgfCAgNDkgKysrKysrKysrCj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9ya3ZkZWMvcmt2ZGVjLmMgICB8IDEwMyArKysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBj
aGFuZ2VkLCAxNTQgaW5zZXJ0aW9ucygrKQoKSSB0ZXN0ZWQgdGhpcyBwYXRjaCBzZXJpZXMgb24g
bXkgUkszNTY2IGJvYXJkIHdpdGggbXkgb3duIHRlc3QgdmlkZW9zIGFuZCBCQkIgCigxMDgwcDYw
IGFuZCA0azMwKSB1c2luZyBtcHYgd2l0aCBbMV0gcGF0Y2hzZXQuCgpUaGUgY29tbWFuZCBJIHVz
ZWQgd2FzOgpgbXB2IC0tdm89ZG1hYnVmLXdheWxhbmQgLS1od2RlYz12NGwycmVxdWVzdCBpbnB1
dF9maWxlLm1wNGAKCkJvdGggSDI2NCBhbmQgSEVWQyBwbGF5cyB3aXRoIG1pbm9yIGZyYW1lZHJv
cHMgKHdoaWNoIHRvIG1lIGlzbid0IG5vdGljZWFibGUpLgoKWW91IGNhbiBhZGQgbXkgVGVzdGVk
LWJ5OgpUZXN0ZWQtYnk6IERhbmcgSHV5bmggPGRhbmcuaHV5bmhAbWFpbmxpbmluZy5vcmc+Cgpb
MV06IGh0dHBzOi8vZ2l0aHViLmNvbS9tcHYtcGxheWVyL21wdi9wdWxsLzE0NjkwCgpCZXN0IHJl
Z2FyZHMsCkRhbmcKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
