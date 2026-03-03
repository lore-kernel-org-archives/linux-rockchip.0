Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17C21EB364A
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 01:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8OD5RZ44TMAD/zoumGBzbh4o59SypbXuLQZYpsjmZjg=; b=TcW85Hj0AR3kBXGKMpgX2HA7HS
	l94hnScaGIAGma9LirsKJ6/5Aq7mhqIJEARDiNQ5usiywnmkDUqMi7KAogpUrrQmIL1b2fLJW5FRH
	YhM8tm6KKUqoq7FQajPit5n9uogi2EiAy2SaQb3DCKXeWyiec3effDqfjK2ZKRAU5kji4p63iCM33
	///L7OLx2ZY3guLMLp6xLDOfvEDIRLTz6oNs/f9kiAZcbdJjuYDYk7JW9LeG4nw3BqXc8TBgixghk
	O+Adga0ZkUluNkpr+Jhs1ZOWGWEYhv08dAUJmjei9FTj5+OwcPedqnjsQvS3IFMAMcDrfRvgvCvVu
	yBi0eVaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxE8Q-0000000EIW6-0oPi;
	Tue, 03 Mar 2026 01:01:14 +0000
Received: from mail-m3290.qiye.163.com ([220.197.32.90])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxE8N-0000000EIVN-395X;
	Tue, 03 Mar 2026 01:01:13 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3581f17ca;
	Tue, 3 Mar 2026 09:01:06 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Grimmauld <grimmauld@grimmauld.de>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
To: Anand Moon <linux.amoon@gmail.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Niklas Cassel <cassel@kernel.org>, Hans Zhang <18255117159@163.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20260226101032.1042-1-linux.amoon@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <560f75f3-e82c-4825-554d-5ead1ae353ee@rock-chips.com>
Date: Tue, 3 Mar 2026 09:01:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260226101032.1042-1-linux.amoon@gmail.com>
X-HM-Tid: 0a9cb136851009cckunmdf53aed31047c16
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk5OGVZJQkgeThgfSR0eQh5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=EJ2lQYLnZonrbwDR82koQeFF/FTrJdyirHy0znOoWno2PaizrLLmn9wiRPAorVoGNm5aMOGr51u90sWqjI18XzoPbg0uPGF/OQs5cXl1vmH5IMww5arnP+YNG7hzp0Lhr6/hR6egU1kwA2q1TjO6vH1WwFenyNGHI1NOLoA9EPw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Mjquj/FOs/2Zx2idcFz2Tunmyq43QxK3eJDgddxDoi8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_170112_305741_6EBE8021 
X-CRM114-Status: GOOD (  18.58  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1NogMjAyNi8wMi8yNiDQx8bay8QgMTg6MTAsIEFuYW5kIE1vb24g0LS1wDoKPiBSb2NrY2hpcCBE
V0MgUENJZSBkcml2ZXIgY3VycmVudGx5IHBlcmZvcm1zIHN5bmNocm9ub3VzIGxpbmsgdHJhaW5p
bmcgZm9yCj4gY29tYm8gUEhZcyAoUENJZSAzLjAvMi4wIGFuZCBTQVRBIDMuMCkgZHVyaW5nIGJv
b3QuIFRoaXMgcHJvY2VzcyB3YWl0cyBmb3IKPiB0aGUgbGluayB0byBiZSBmdWxseSBlc3RhYmxp
c2hlZCwgYWRkaW5nIHNldmVyYWwgbWlsbGlzZWNvbmRzIHRvIHRoZSBib290Cj4gc2VxdWVuY2Uu
IFRvIG9wdGltaXplIGJvb3QgdGltZSwgdGhpcyBjaGFuZ2UgZW5hYmxlcyBhc3luY2hyb25vdXMg
cHJvYmluZywKPiBhbGxvd2luZyBsaW5rIGVzdGFibGlzaG1lbnQgdG8gcHJvY2VlZCBpbiB0aGUg
YmFja2dyb3VuZCB3aGlsZSB0aGUga2VybmVsCj4gY29udGludWVzIHByb2Jpbmcgb3RoZXIgZGV2
aWNlcy4KClJldmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4K
Cj4gCj4gQ2M6IEdyaW1tYXVsZCA8Z3JpbW1hdWxkQGdyaW1tYXVsZC5kZT4KPiBDYzogTmlrbGFz
IENhc3NlbCA8Y2Fzc2VsQGtlcm5lbC5vcmc+Cj4gVGVzdGVkLWJ5OiBHcmltbWF1bGQgPGdyaW1t
YXVsZEBncmltbWF1bGQuZGU+Cj4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1v
b25AZ21haWwuY29tPgo+IC0tLQo+IHYzOiB1cGRhdGUgdGhlIGNvbW1pdCBtZXNzYWdlIHRvIGRl
c2NyaWJlIHRoZSBjaGFuZ3MuCj4gICAgICBhZGRlZCB0ZXN0ZWQgYnkgR3JpbW1hdWxkLgo+ICAg
ICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQwODA5MDczNjEwLjI1MTctMS1saW51
eC5hbW9vbkBnbWFpbC5jb20vCj4gdjI6IHVwZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2UgdG8gZGVz
Y3JpYmUgdGhlIGNoYW5ncy4KPiAtLS0KPiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZHctcm9ja2NoaXAuYyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9j
a2NoaXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+
IGluZGV4IDViMTdkYTYzMTUxZDUuLmMzMWUwZTk4NDgzMjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gQEAgLTc0Niw2ICs3NDYsNyBA
QCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciByb2NrY2hpcF9wY2llX2RyaXZlciA9IHsK
PiAgIAkJLm5hbWUJPSAicm9ja2NoaXAtZHctcGNpZSIsCj4gICAJCS5vZl9tYXRjaF90YWJsZSA9
IHJvY2tjaGlwX3BjaWVfb2ZfbWF0Y2gsCj4gICAJCS5zdXBwcmVzc19iaW5kX2F0dHJzID0gdHJ1
ZSwKPiArCQkucHJvYmVfdHlwZSA9IFBST0JFX1BSRUZFUl9BU1lOQ0hST05PVVMsCj4gICAJfSwK
PiAgIAkucHJvYmUgPSByb2NrY2hpcF9wY2llX3Byb2JlLAo+ICAgfTsKPiAKPiBiYXNlLWNvbW1p
dDogZjRkMGVjMGFhMjBkNDlmMDlkYzAxZDgyODk0Y2U4MGQ3MmRlMDU2MAo+IAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
