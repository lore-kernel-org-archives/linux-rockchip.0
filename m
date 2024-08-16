Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18A27C52D7F
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 00:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5ng6OUPVRDXrBIAlx0eCbyzMgRimo4MLQqOduwO73o=; b=uymZzC+LUS6xKF
	lEGkZplXsEk41+nadrjiVZedcP9gPywoB8kNB+2+vipS309i+V0U8eFWqn40oWW3BydlUNr0TJzAJ
	0K+SwpMbUP/XLP236DSNRlOSfIeIYJUQ38YnrWHwn2eLic0A6YGzqvqZrRXxJl/nAqDv8s2Dj4UaR
	ZYWUy1oVfS+JElfhwtpXSn8irZFYHMzxGsGNT9Fv3dcWqjADVWMLjW39wbJv/JJ3gt/SsrvUQGuAS
	dZmgCwCEMB7s/dr4VgOCdv0+X8fwITgre2q8oeeGJwFWAy41O832OKvCQBoSxKrZXMGCqySY1hEf2
	WphBk80nU5fAw90fsEFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sel35-0000000BPEw-0l52;
	Fri, 16 Aug 2024 00:42:35 +0000
Received: from mail-m243.xmail.ntesmail.com ([45.195.24.3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sel2z-0000000BPEO-3vvw;
	Fri, 16 Aug 2024 00:42:32 +0000
DKIM-Signature: a=rsa-sha256;
	b=GkzPlGexYR9mpFJHzYzoQkPk0Qui3j39k078hHjhz3E2/FF8QFws9/w9CFsYwMj+L1D5FtMQQMaU03vbG16Dyz3Ottual4Ym9JDQa4CommpbGI+/l6hYDRl0GtZrRCgntsPXyBs2cuHCuu8iEjR1d2qVpNzlNTAFYc4G7iDJl44=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=u2bY45nOuxIO29yl3xiZLYWOFNM2Z13NxlwmREOfWz8=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 5EE434601F5;
	Fri, 16 Aug 2024 08:41:59 +0800 (CST)
Message-ID: <87304544-b223-4825-86a3-d0fd9eff0afe@rock-chips.com>
Date: Fri, 16 Aug 2024 08:41:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jaehoon Chung <jh80.chung@samsung.com>,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
Subject: Re: [PATCH v3 2/3] mmc: dw_mmc-rockchip: Add v2 tuning support
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>, linux-kernel@vger.kernel.org
References: <20240814223555.3695-1-detlev.casanova@collabora.com>
 <20240814223555.3695-3-detlev.casanova@collabora.com>
 <5dc82aa2-82a0-4778-b598-88775d5f791c@rock-chips.com>
 <18146801.MNNF8PUAaN@diego>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <18146801.MNNF8PUAaN@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUpMSlZMSU9DQx4eTRlNTh9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9158a258f203aekunm5ee434601f5
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NBQ6Hjo4AjIwKDorGDZMARYS
	LzFPCUtVSlVKTElITE1DQklLTEJIVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU9KSEI3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_174230_491330_E09CD990 
X-CRM114-Status: GOOD (  18.51  )
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

SGkgSGVpa28sCgrlnKggMjAyNC84LzE1IDIxOjE3LCBIZWlrbyBTdMO8Ym5lciDlhpnpgZM6Cj4g
QW0gRG9ubmVyc3RhZywgMTUuIEF1Z3VzdCAyMDI0LCAwMjo1NTozNyBDRVNUIHNjaHJpZWIgU2hh
d24gTGluOgo+PiBIaSBEZXRsZXYKPj4KPj4g5ZyoIDIwMjQvOC8xNSA2OjM0LCBEZXRsZXYgQ2Fz
YW5vdmEg5YaZ6YGTOgo+Pj4gRnJvbTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5j
b20+Cj4+Pgo+Pj4gdjIgdHVuaW5nIHdpbGwgaW5oZXJpdCBwcmUtc3RhZ2UgbG9hZGVyJ3MgcGhh
c2Ugc2V0dGluZ3MgZm9yIHRoZSBmaXJzdAo+Pj4gdGltZSwgYW5kIGRvIHJlLXR1bmUgaWYgbmVj
ZXNzYXJ5Lgo+Pj4gUmUtdHVuZSB3aWxsIHN0aWxsIHRyeSB0aGUgcm91Z2ggZGVncmVlcywgZm9y
IGluc3RhbmNlLCA5MCwgMTgwLCAyNzAsCj4+PiAzNjAgYnV0IGNvbnRpbnVlIHRvIGRvIHRoZSBm
aW5lIHR1bmluZyBpZiBzYW1wbGUgd2luZG93IGlzbid0IGdvb2QKPj4+IGVub3VnaC4KPj4+Cj4+
PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4+
IFNpZ25lZC1vZmYtYnk6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9y
YS5jb20+Cj4gCj4+PiBAQCAtMjc3LDYgKzMyMiwxMCBAQCBzdGF0aWMgaW50IGR3X21jaV9yazMy
ODhfcGFyc2VfZHQoc3RydWN0IGR3X21jaSAqaG9zdCkKPj4+ICAgIAkJCQkJJnByaXYtPmRlZmF1
bHRfc2FtcGxlX3BoYXNlKSkKPj4+ICAgIAkJcHJpdi0+ZGVmYXVsdF9zYW1wbGVfcGhhc2UgPSAw
Owo+Pj4gICAgCj4+PiArCXByaXYtPnVzZV92Ml90dW5pbmcgPQo+Pj4gKwkJb2ZfZGV2aWNlX2lz
X2NvbXBhdGlibGUoaG9zdC0+ZGV2LT5vZl9ub2RlLAo+Pj4gKwkJCQkJInJvY2tjaGlwLHJrMzU3
Ni1kdy1tc2hjIik7Cj4+PiArCj4+Cj4+IHYyIGlzIGEga2luZCBvZiBzb2Z0d2FyZSBkZWNpc2lv
biBpbnN0ZWFkIG9mIGhhcmR3YXJlIGRlcGVuZGVuY3kuCj4+IFNvIGluIHRoZW9yeSwgYW55IFNv
QyBjYW4gY2xhaW0gdG8gdXNlIGl0IHZpYSBEVC4KPiAKPiB3aGljaCBhY3R1YWxseSBtYWtlcyBp
dCB1bnN1aXRhYmxlIGZvciBkdC4gPgoKVW5kZXJzdG9vZC4KCj4gRGV2aWNldHJlZSBkZXNjcmli
ZXMgaGFyZHdhcmUtcHJvcGVydGllcyBhbmQgc2hvdWxkIF9ub3RfIGJlIHVzZWQgZm9yCj4gc29m
dHdhcmUgY29uZmlndXJhdGlvbi4KPiAKPiAgRnJvbSB0aGUgY29tbWVudCBhYm92ZSwgSSBhc3N1
bWUgdGhlIHJrMzU3NiBkb2VzIG5vdCBuZWVkIHRoYXQgZmVhdHVyZQo+IGFuZCBjYW4ganVzdCB3
b3JrIHdpdGggdGhlIHJlZ3VsYXIgdHVuaW5nPwoKWWVwLCB5b3VyIGFyZSByaWdodC4KCj4gCj4g
U28gdGhlcmUgYXJlIHR3byByb3V0ZXMgZm9yIHRoZSBpbW1lZGlhdGUgZnV0dXJlOgo+ICgxKSBy
azM1NzYgX25lZWRzXyB0aGF0IGZlYXR1cmUsIHRoZW4gZ29pbmcgd2l0aCB0aGUgY29tcGF0aWJs
ZSBpcyBmaW5lCj4gCj4gKDIpIHJrMzU3NiBkb2VzIG5vdCBuZWVkIGFic29sdXRlbHkgbmVlZCB0
aGF0IGZlYXR1cmUsIHRoZW4gSSdkIGV4cGVjdAo+IHRoZSBiYXNpYyByazM1NzYgdG8gZmlyc3Qg
Y29tZSB3aXRob3V0LCBhcyBJJ2QgZXhwZWN0IGEgbG90IG1vcmUgZXhwbGFuYXRpb24KPiBvbiB3
aHkgaXQgaXMgYWN0dWFsbHkgbmVlZGVkLCBhbmQgd2hpY2ggY2FzZXMgaXQgZG9lcyBpbXByb3Zl
Lgo+IFRoZSBjb21taXQgbWVzc2FnZSBkb2VzIG5vdCByZWFsbHkgZXhwbGFpbiB0aGF0IG11Y2gg
YWJvdXQgd2h5IHRoaXMKPiBpcyBhIGdyZWF0L25lZWRlZCBmZWF0dXJlIGFuZCB3aGljaCBhcmVh
cyBpdCBkb2VzIGltcHJvdmUuCj4gCgpWb3RlIGZvciB0aGUgMm5kLiByazM1NzYganVzdCBuZWVk
CltQQVRDSCB2MyAzLzNdIG1tYzogZHdfbW1jLXJvY2tjaGlwOiBBZGQgaW50ZXJuYWwgcGhhc2Ug
c3VwcG9ydAoKCj4gCj4gSGVpa28KPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
