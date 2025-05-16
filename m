Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 098FFC3ABC9
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 May 2025 07:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGy1Y82AC7nYtQaoxdiibuluvG8LfPOESjfBYImY5sk=; b=IV46+dLyRxEV2C
	PHEQrUUMlrBQniFZUy+I+tLFRUhcdFMJnxDsrRCBYSmOjA6yG2sN3vzcgLj5F9QscLtonbWcGG5nC
	q34SeTUtc4x0jqni+WK1n1y1EHCapa1xheEiE56KXv6dFLN+WsT6zKPX5+A2vj95YwMuDKK7W2Qvd
	YbGZ9q0VPWAT2o2KCsIUZgJTYbo4vhGj1ebaSQXl3McMhUmJT/4V3pHXDxAx70chPGaMpUxCRKlkr
	QiIz28PkisWzI+QyV1RqMmMcE1LGVUCSsGyumnsPqsICMEC7Yxzh1xruj3Cd1mxDutLprf3O4rLcQ
	xbEtuYW6YxP+1NRsmVtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFpkV-00000002h0d-1M3t;
	Fri, 16 May 2025 07:44:55 +0000
Received: from mail-m49241.qiye.163.com ([45.254.49.241])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFpkS-00000002gzq-1oic;
	Fri, 16 May 2025 07:44:54 +0000
Received: from [127.0.0.1] (gy-adaptive-ssl-proxy-1-entmail-virt204.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 15447ed97;
	Fri, 16 May 2025 15:44:39 +0800 (GMT+08:00)
Message-ID: <e86fec57-de90-4663-9a32-7c50a97cde67@rock-chips.com>
Date: Fri, 16 May 2025 15:44:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] dt-bindings: display: rockchip: Convert
 cdn-dp-rockchip.txt to yaml
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chaoyi Chen <kernel@airkyi.com>
Cc: Dragan Simic <dsimic@manjaro.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250513011904.102-1-kernel@airkyi.com>
 <20250513011904.102-3-kernel@airkyi.com> <2745929.KRxA6XjA2N@diego>
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <2745929.KRxA6XjA2N@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk1CSVYfSkIdGBlLTh1JTx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96d80d673803abkunm2d3213c01ca95b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nz46DAw6PzExCDYqMTgUPBhC
	ExAKFDJVSlVKTE9MSENKT0NNSExLVTMWGhIXVRgTGhQCElUYEx4VOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSU9CTzcG
DKIM-Signature: a=rsa-sha256;
	b=gkwgkjXlmwVOg3emov54bWNmQ1ubniLLIoSOjKfg5mEc2hU3kFdn4I0DELqTTHGZzUfzNtVeSguuROWSIs1v6ZOmVpJ6jgtcIbG7x7OJVOObwxO0Tig8aeQYt4seLgQYX2Mqt0TfWExTJl7lmSJgHfz6iavTQYvq2y6wMuO+jiU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=FmRZQYKpsA98XcslpEE/kRwKmHDbWxw0f+hVuWfJG/g=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_004452_962966_339BD1FF 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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

SGkgSGVpa28sCgpPbiAyMDI1LzUvMTUgMjE6MDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhp
LAo+Cj4gQW0gRGllbnN0YWcsIDEzLiBNYWkgMjAyNSwgMDM6MTk6MDQgTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBDaGFveWkgQ2hlbjoKPj4gRnJvbTogQ2hhb3lpIENoZW4g
PGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+PiArICBwb3J0czoKPj4gKyAgICAkcmVmOiAv
c2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0aWVzL3BvcnRzCj4+ICsKPj4gKyAgICBwcm9wZXJ0
aWVzOgo+PiArICAgICAgcG9ydEAwOgo+PiArICAgICAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55
YW1sIy9wcm9wZXJ0aWVzL3BvcnQKPj4gKyAgICAgICAgZGVzY3JpcHRpb246IElucHV0IG9mIHRo
ZSBDRE4gRFAKPj4gKyAgICAgICAgcHJvcGVydGllczoKPj4gKyAgICAgICAgICBlbmRwb2ludEAw
Ogo+PiArICAgICAgICAgICAgZGVzY3JpcHRpb246IENvbm5lY3Rpb24gdG8gdGhlIFZPUEIKPj4g
KyAgICAgICAgICBlbmRwb2ludEAxOgo+PiArICAgICAgICAgICAgZGVzY3JpcHRpb246IENvbm5l
Y3Rpb24gdG8gdGhlIFZPUEwKPj4gKyAgICAgIHBvcnRAMToKPj4gKyAgICAgICAgJHJlZjogL3Nj
aGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9wb3J0Cj4+ICsgICAgICAgIGRlc2NyaXB0aW9u
OiBPdXRwdXQgb2YgdGhlIENETiBEUAo+PiArCj4+ICsgICAgcmVxdWlyZWQ6Cj4+ICsgICAgICAt
IHBvcnRAMAo+PiArICAgICAgLSBwb3J0QDEKPiB5b3UncmUgYWRkaW5nIHRoZSAybmQgcG9ydCAo
cG9ydEAxKSBhcyBvdXRwdXQgcG9ydCwgd2hpY2ggaGFzIG5vdCBiZWVuCj4gcGFydCBvZiB0aGUg
b2xkIGJpbmRpbmcuIEkgdGhpbmsgdGhpcyB3YXJyYW50cyBhbiBleHBsYW5hdGlvbiBpbiB0aGUK
PiBjb21taXQgbWVzc2FnZSBvbiB3aGF0IGl0IGlzIG1lYW50IHRvIGNvbnRhaW4uCgpUaGlzIGlz
IG1haW5seSB0byBrZWVwIGNvbnNpc3RlbnQgd2l0aCB0aGUgYmluZGluZyBzdHlsZSBvZiBvdGhl
ciAKZGlzcGxheSBpbnRlcmZhY2VzLCB3aGljaCBhbGwgaGF2ZSBhbiBJbnB1dCAocG9ydEAwKSBh
bmQgT3V0cHV0IChwb3J0QDEpLgoKVGhpcyBjaGFuZ2UgaGFzIG5vIGVmZmVjdCBvbiB0aGUgZHJp
dmVyLsKgIEkgd2lsbCBleHBsYWluIHRoaXMgaW4gdjQuCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
