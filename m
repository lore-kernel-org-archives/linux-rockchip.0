Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939C7606A31D
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 02:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vCcdlUga;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=ChbgGRda
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=VuHKVtnnvCnSL3/2Dh2wGwukmMyy8XuNc3YLQa5e42M=; b=vCcdlUgasmlMzSsH2OR9puXfnA
	FyUUG0Owi3K1Razf1P7KWNxlsI0VG3h9lFmkwD+FTQb2Iz1Hk5JMKPE/yTNe+bzZ8LWhR+haBOXrN
	dBnhdj48f4e1aBrAp4iRjif/WL8oNWejIiMSZkDGaQT9hsIGUgbKAkFDKcxIABqp15iXsBI31rWY5
	fG+yE0gYx/JsbBorA/Yn+pceBJbHRWf2P7zkdJkfVqGGkbl5hzXIP0r2Rl52iim3JRINoLao420BH
	jKckUp9kPg7YV3Lx1TkPONP5iFZf9Bhut4oJwr9BT8OQ3EhGsQpSvPD7GkjBMlPTMuj3FHAeW+YWq
	ESK9Hosw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLtI3-000000065im-12zZ;
	Wed, 28 Oct 2026 02:21:23 +0000
Received: from mail-m83251.xmail.ntesmail.com ([156.224.83.251])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLtHz-000000065hs-3S7g;
	Wed, 28 Oct 2026 02:21:22 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 529689659;
	Wed, 28 Oct 2026 10:21:14 +0800 (GMT+08:00)
Message-ID: <95aeecc0-2794-4cc6-a635-5c042afc1405@rock-chips.com>
Date: Wed, 28 Oct 2026 10:21:14 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, manivannan.sadhasivam@oss.qualcomm.com,
 bhelgaas@google.com, robh@kernel.org, heiko@sntech.de, dlemoal@kernel.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, iav@iav.lv
Subject: Re: [PATCH v3] PCI: rockchip: Don't lengthen PERST# when power is
 already valid
To: =?UTF-8?Q?Enrique_Hern=C3=A1ndez_Bello?= <ehbello@gmail.com>
References: <20261028005603.2399220-1-ehbello@gmail.com>
 <cf541723-eb4c-4ba6-92c5-33baafc20e7c@rock-chips.com>
 <20261028015923.2436122-1-ehbello@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261028015923.2436122-1-ehbello@gmail.com>
X-HM-Tid: 0aa1804fc91103a4kunma6c4c0125b2f1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaHx5DVh1IHh9CHUhJSB4aSFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ChbgGRdaxijZR8KSKUvfal1CoRHVY7Efis8YUv4CvZkGOOQ9ep4+V5XBRTk/O3wdft+rGE5oYntRLWujhiU2sBAr2Xq6/IqEK3kaRRClrPQc267MmCJQWAa90mhSb+ath4NiHQnQrpC8uKCcDQkzY2QZNBi3i1FuPkyPoNTC9O0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=yNHKjhci1gy/pCPG8FfXM4uD8fUDi3UIHMZ1Loq+UU8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_192120_435695_3FD32E9E 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYvMTAvMjgg5pif5pyf5LiJIDk6NTksIEVucmlxdWUgSGVybsOhbmRleiBCZWxsbyDl
hpnpgZM6Cj4gT24gV2VkLCAyOCBPY3QgMjAyNiAwOTozNDowNCArMDgwMCwgU2hhd24gTGluIHdy
b3RlOgo+IAoKLi4uCgo+IAo+PiBGdXJ0aGVybW9yZSwgZXZlbiB3aXRoIHRoZSBzYW1lIHBvd2Vy
IHN1cHBseSBkZXNpZ24sIGRpZmZlcmVudCBlbmRwb2ludHMKPj4gbWF5IGJlaGF2ZSBkaWZmZXJl
bnRseS4gV2hhdCBpZiBhIHBhcnRpY3VsYXIgZGV2aWNlIHJlcXVpcmVzIGEgbG9uZ2VyCj4+IHJl
c2V0IHB1bHNlIHRvIHdvcmsgcmVsaWFibHk/IEhvdyB3b3VsZCB3ZSBoYW5kbGUgdGhhdD8KPiAK
PiBUaGUgb25seSBmbG9vciB0aGUgc3BlYyBnaXZlcyBpcyBUX1BFUlNULCAxMDAgdXMgb2YgYWN0
aXZlIFBFUlNUIywgYW5kIHY0Cj4gc3RhcnRlZCBndWFyYW50ZWVpbmcgdGhhdCBleHBsaWNpdGx5
IHdpdGggYW4gZnNsZWVwKCkgcmF0aGVyIHRoYW4gcmVseWluZyBvbgo+IHRoZSAxMDAgbXMuIEJl
eW9uZCB0aGF0IHRoZXJlIGlzIG5vIHJlcXVpcmVkIG1pbmltdW0gdG8gcHJlc2VydmUuCj4gCj4g
QW5kIHRoZSBzaG9ydCBwdWxzZSBpcyBub3QgbmV3IGJlaGF2aW91cjogZnJvbSB0aGUgZHJpdmVy
J3MgaW50cm9kdWN0aW9uCj4gdW50aWwgYzQ3ZjkwYmU0Yzg5IGluIHY2LjExLXJjMSB0aGVyZSB3
YXMgbm8gd2FpdCBiZWZvcmUgdGhlIGRlLWFzc2VydCBhdAo+IGFsbCwgc28gdGhlIHB1bHNlIHdh
cyBvbmx5IGFzIGxvbmcgYXMgdGhlIHJlZ2lzdGVyIHdyaXRlcyBpbiBiZXR3ZWVuIHRvb2suCj4g
VGhhdCBpcyB3aGF0IGV2ZXJ5IGVuZHBvaW50IG9uIHRoaXMgZHJpdmVyIHNhdyBmb3IgeWVhcnMu
IFRoZSAxMDAgbXMgcHVsc2UKPiBpcyB0aGUgcmVjZW50IGNoYW5nZSwgYW5kIGl0IGlzIHdoYXQg
YnJva2UgdGhpcyBvbmUuIElmIHNvbWUgZGV2aWNlIHR1cm5zCj4gb3V0IHRvIG5lZWQgbG9uZ2Vy
LCB0aGF0IHNlZW1zIGxpa2UgYSBxdWlyayBmb3IgdGhhdCBkZXZpY2UgcmF0aGVyIHRoYW4gYQo+
IHJlYXNvbiB0byBrZWVwIGEgZGVmYXVsdCB0aGF0IHJlZ3Jlc3NlZCBhbm90aGVyLgo+IAoKV2Fz
IGl0IHBvc3NpYmxlIHRvIGFkZCBhIERUIHByb3BlcnR5IGZvciBjb25maWd1cmFibGUgZGVsYXk/
IEkgY2FtZQphY3Jvc3Mgc2V2ZXJhbCBFUHMgbmVlZCBxdWl0ZSBhIGxvbmdlciB3YWl0IHRpbWUs
IHNvIGFkZCBpdCBpbiB0aGUKdmVuZG9yIHRyZWUgZm9yIGR3Yy1iYXNlZCBJUFsxXS4gVGhhdCBj
b3VsZCBiZSBhcHBsaWVkIGhlcmUgdG8gc2xvdmUKeW91ciBjYXNlcyBhbmQgb3RoZXJzJywgYW5k
IG1pZ2h0IGF2b2lkIHJlZ3Jlc3Npb24uCgpbMV0gCmh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hp
cC1saW51eC9rZXJuZWwvYmxvYi9kZXZlbG9wLTYuMTIvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1kdy1yb2NrY2hpcC5jI0w4NjUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
