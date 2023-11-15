Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8D91C47072
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Nov 2023 02:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdxM64Mwqy8G1gUCpKWSGtkaNQMtplruk5Al/EbZVA0=; b=V8+OLEuKu7/uHk
	XWYdsSLY5bPXRHvWzGyqqX9H5ylorlzl8oNcD7R1GaOvyhwJQ25qUWaScUsRFNR3LCu4yWrhOGWm+
	282e3TlHrbsWIpkWl7SkENGcfz4aEpXf+Y94VwGsfW8aay+ixODOLRZz606VRrc9gPQ581DxIpIR/
	+69ynuIwtirrBnUajM7QCTkG2hVNG7EJr7f9DTQGOwCtEZP/2KMEmdi0i/GQv8e6IQ0xt3LzQYaKP
	0KU581Iq8uA0UmEO7DgPMntNOWZH0uusD1w5AXkrCTN1yYtS38PniVwN29bia6tJd5SJQ31w6eWRS
	sL32ShdA32uKyv4Daf4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r35uk-00HHUO-0W;
	Wed, 15 Nov 2023 02:46:02 +0000
Received: from mail-m118219.qiye.163.com ([115.236.118.219])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r35ug-00HHSi-0f
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Nov 2023 02:46:00 +0000
DKIM-Signature: a=rsa-sha256;
	b=B63RZCm9h9X1F0ItkSIiZQN1Q5SRObyjJ+Ejx8p3zSkT1Osm5pEecBpZdu3t7ZwqoD8zLnJrRp4+2RK4+mqxkuxcWD89NrPIulFQdFsg+iFFwnqNyBrsORajiYmHx/kq6Gb79Vx3Kf8iw+o9+c9nJ5SubHukVF/8iOqtYtf/NCg=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=JogRrWa0NTb5d0n006ipq3R/fD5aUYOfvc69+L6lX00=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id B76777801CE;
	Wed, 15 Nov 2023 10:45:25 +0800 (CST)
Message-ID: <3906a288-cafa-4c60-9fb3-4d4c75487340@rock-chips.com>
Date: Wed, 15 Nov 2023 10:45:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/11] dt-bindings: display: vop2: Add rk3588 support
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112841.1771312-1-andyshrk@163.com> <11331566.rMLUfLXkoz@diego>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <11331566.rMLUfLXkoz@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0kdH1YfTBlCQkgfSBpOSxpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8bd0de85bab24fkuuub76777801ce
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OTY6ASo4Ljw8H05KST1JLFYT
	NSlPFClVSlVKTEtLS0pNSElNTEpNVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0xCSTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_184558_727683_59B50165 
X-CRM114-Status: GOOD (  11.61  )
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

Ck9uIDExLzE1LzIzIDA1OjU0LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBEaWVuc3RhZywg
MTQuIE5vdmVtYmVyIDIwMjMsIDEyOjI4OjQxIENFVCBzY2hyaWViIEFuZHkgWWFuOgo+PiBGcm9t
OiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4+Cj4+IFRoZSB2b3AyIG9uIHJr
MzU4OCBpcyBzaW1pbGFyIHRvIHdoaWNoIG9uIHJrMzU2eAo+PiBidXQgd2l0aCA0IHZpZGVvIG91
dHB1dHMgYW5kIG5lZWQgdG8gcmVmZXJlbmNlCj4+IG1vcmUgZ3JmIG1vZHVsZXMuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+
Cj4+ICAgLi4uL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wMi55YW1sICAgICAgIHwgMjUg
KysrKysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCsp
Cj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlz
cGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3AyLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3AyLnlhbWwKPj4gaW5kZXgg
YjYwYjkwNDcyZDQyLi5jMzMzYzY1MWRhMWEgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcDIueWFtbAo+
PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hp
cC9yb2NrY2hpcC12b3AyLnlhbWwKPj4gQEAgLTIwLDYgKzIwLDcgQEAgcHJvcGVydGllczoKPj4g
ICAgICAgZW51bToKPj4gICAgICAgICAtIHJvY2tjaGlwLHJrMzU2Ni12b3AKPj4gICAgICAgICAt
IHJvY2tjaGlwLHJrMzU2OC12b3AKPj4gKyAgICAgIC0gcm9ja2NoaXAscmszNTg4LXZvcAo+PiAg
IAo+PiAgICAgcmVnOgo+PiAgICAgICBpdGVtczoKPj4gQEAgLTQ4LDYgKzQ5LDggQEAgcHJvcGVy
dGllczoKPj4gICAgICAgICAtIGRlc2NyaXB0aW9uOiBQaXhlbCBjbG9jayBmb3IgdmlkZW8gcG9y
dCAwLgo+PiAgICAgICAgIC0gZGVzY3JpcHRpb246IFBpeGVsIGNsb2NrIGZvciB2aWRlbyBwb3J0
IDEuCj4+ICAgICAgICAgLSBkZXNjcmlwdGlvbjogUGl4ZWwgY2xvY2sgZm9yIHZpZGVvIHBvcnQg
Mi4KPj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFBpeGVsIGNsb2NrIGZvciB2aWRlbyBwb3J0IDQu
Cj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQZXJpcGhlcmFsIGNsb2NrIGZvciB2b3Agb24gcmsz
NTg4Lgo+PiAgIAo+PiAgICAgY2xvY2stbmFtZXM6Cj4+ICAgICAgIGl0ZW1zOgo+PiBAQCAtNTYs
MTIgKzU5LDI5IEBAIHByb3BlcnRpZXM6Cj4+ICAgICAgICAgLSBjb25zdDogZGNsa192cDAKPj4g
ICAgICAgICAtIGNvbnN0OiBkY2xrX3ZwMQo+PiAgICAgICAgIC0gY29uc3Q6IGRjbGtfdnAyCj4+
ICsgICAgICAtIGNvbnN0OiBkY2xrX3ZwMwo+PiArICAgICAgLSBjb25zdDogcGNsa192b3AKPiB3
aXRoIHRoZSBlcnJvciBSb2IncyBib3QgcmVwb3J0ZWQsIEkgZ3Vlc3MgYm90aCBjbG9ja3MgYW5k
IGNsb2NrLW5hbWVzCj4gbmVlZCBhIG1pbkl0ZW1zIGVsZW1lbnQgdG8gbWFyayB0aGVzZSBuZXcg
Y2xvY2tzIGVzc2VudGlhbGx5IGFzIG9wdGlvbmFsPwoKWWVzLCB3aGVuIGFkZCBtaW5JdGVtcyBm
b3IgY2xvY2tzIGFuZCBjbGtvY2stbmFtZXMsIHRoZSBlcnJvIGdvbmUuCgpDb25zaWRlcmluZyB3
ZSBhbHNvIGhhdmUgdm9wMiBiYXNlZCBzb2MocmszNTYyKSBvbmx5IGhhdmUgb25lIHZpZGVvIHBv
cnQsCgpzbyBpdCBpcyBiZXR0ZXIgdG8gc2V0IHRoZSBtaW5JdGVtcyBhcyAzIGhlcmU/Cgo+Cj4+
ICAgICByb2NrY2hpcCxncmY6Cj4+ICAgICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2Rl
ZmluaXRpb25zL3BoYW5kbGUKPj4gICAgICAgZGVzY3JpcHRpb246Cj4+ICAgICAgICAgUGhhbmRs
ZSB0byBHUkYgcmVncyB1c2VkIGZvciBtaXNjIGNvbnRyb2wKPj4gICAKPj4gKyAgcm9ja2NoaXAs
dm8tZ3JmOgo+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3Bo
YW5kbGUKPj4gKyAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgIFBoYW5kbGUgdG8gVk8gR1JGIHJl
Z3MgdXNlZCBmb3IgbWlzYyBjb250cm9sLCByZXF1aXJlZCBmb3IgcmszNTg4Cj4+ICsKPj4gKyAg
cm9ja2NoaXAsdm9wLWdyZjoKPj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZp
bml0aW9ucy9waGFuZGxlCj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAgICBQaGFuZGxlIHRv
IFZPUCBHUkYgcmVncyB1c2VkIGZvciBtaXNjIGNvbnRyb2wsIHJlcXVpcmVkIGZvciByazM1ODgK
Pj4gKwo+PiArICByb2NrY2hpcCxwbXU6Cj4+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFt
bCMvZGVmaW5pdGlvbnMvcGhhbmRsZQo+PiArICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgUGhh
bmRsZSB0byBQTVUgcmVncyB1c2VkIGZvciBtaXNjIGNvbnRyb2wsIHJlcXVpcmVkIGZvciByazM1
ODgKPj4gKwo+PiAgICAgcG9ydHM6Cj4+ICAgICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwj
L3Byb3BlcnRpZXMvcG9ydHMKPj4gICAKPj4gQEAgLTgxLDYgKzEwMSwxMSBAQCBwcm9wZXJ0aWVz
Ogo+PiAgICAgICAgICAgZGVzY3JpcHRpb246Cj4+ICAgICAgICAgICAgIE91dHB1dCBlbmRwb2lu
dCBvZiBWUDIKPj4gICAKPj4gKyAgICAgIHBvcnRAMzoKPj4gKyAgICAgICAgJHJlZjogL3NjaGVt
YXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9wb3J0Cj4+ICsgICAgICAgIGRlc2NyaXB0aW9uOgo+
PiArICAgICAgICAgIE91dHB1dCBlbmRwb2ludCBvZiBWUDMKPj4gKwo+PiAgICAgaW9tbXVzOgo+
PiAgICAgICBtYXhJdGVtczogMQo+PiAgIAo+Pgo+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
