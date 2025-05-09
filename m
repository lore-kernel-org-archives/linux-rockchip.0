Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 847D1C3ABBE
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 02:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBvsRangyhsD41hfPIqvzwEMRCelwGsE1u/WBq2X4Io=; b=Zv5pnl1U6KufWv
	eFbbeRYxD9IQ8X4OaSGW2CBGIo3bvf3XdkPk39EepgtfT0qdE705QAFR6/4Cp4dP+tIt0vB5IYqRJ
	3KbthF0w1Fn5C5mEWHti0kj9snWPAk2CjQ8fjTvpDisUUx3gmNEcqP6BarF0UATAtOFSN7NtA8z7K
	g8h3jSPlrUdBX1eOxh/U0dhNYXL+X597zImtwlCsxai2Kgg8jWrTixgTGTe1PR6NcsQgssjLzmA/R
	3dPtSxbEBiRBhNO5PWWl9YoVdDznPDTtUcCRrAcSrEcBJeTl8hMUiGA5ApuQTqpSPoAKO20rGZn4m
	/kaZ3mmixcRnV1FwUnlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDD2c-00000002DNw-279G;
	Fri, 09 May 2025 02:00:46 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDD0d-00000002DG3-2MKq;
	Fri, 09 May 2025 01:58:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=55PNgOcKj2H7fTf4hRgwZb8Ew5SPSaRTUmV47X0Ho0A=; b=l
	UKDgkep97B/9Unz+gncswaNSIeZ+Lh0gamZ2w9JJlrUfo70hmw63fXntBNO4gb3W
	/eFGKOx5QBt2tR8fy3czCtzSLOqcr8TzOfxpcqKpn5afVpsqhBbMSXboBReZ2ld7
	QjqW+a+m3Dng7rbhT7CVZI2eELaTKFpaPmbnlb0s4g=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-104 (Coremail) ; Fri, 9 May 2025 09:58:09 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Fri, 9 May 2025 09:58:09 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, hjc@rock-chips.com,
	mripard@kernel.org, neil.armstrong@linaro.org, knaerzche@gmail.com,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH v4 0/7] Convert inno hdmi to drm bridge
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <nco27hnwykffzgirhocskltrkcds32tefkix23nfknf3e5m3zd@mkrrbw6kogsi>
References: <20250422070455.432666-1-andyshrk@163.com>
 <9503607.rMLUfLXkoz@diego>
 <nco27hnwykffzgirhocskltrkcds32tefkix23nfknf3e5m3zd@mkrrbw6kogsi>
X-NTES-SC: AL_Qu2fBPueukAj7yafYOkfmkcVgOw9UcO5v/Qk3oZXOJF8jC7pxyUYZFlTGWvs7PCDJim1nQiHezZt88JTXIVAZqUNMere4kRSvPWFUR2XLkygWQ==
MIME-Version: 1.0
Message-ID: <1a07d69.1e47.196b2c3aa12.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: aCgvCgD335UxYR1opDYAAA--.2599W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkBdIXmgdXGlOSwAEsQ
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_185843_957783_B322DB9F 
X-CRM114-Status: GOOD (  22.27  )
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

CkhpIERtaXRyeSwKCiBUaGFua3MgZm9yIHlvdSByZXZpZXcuCgrlnKggMjAyNS0wNS0wNSAwMDox
NjozNe+8jCJEbWl0cnkgQmFyeXNoa292IiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0u
Y29tPiDlhpnpgZPvvJoKPk9uIFNhdCwgTWF5IDAzLCAyMDI1IGF0IDA0OjQyOjA0UE0gKzAyMDAs
IEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBBbSBEaWVuc3RhZywgMjIuIEFwcmlsIDIwMjUsIDA5
OjA0OjM5IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQW5keSBZYW46Cj4+
ID4gRnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+PiA+IAo+PiA+IFdo
ZW4gcHJlcGFyaW5nIHRvIGNvbnZlcnQgdGhlIGN1cnJlbnQgaW5ubyBoZG1pIGRyaXZlciBpbnRv
IGEKPj4gPiBicmlkZ2UgZHJpdmVyLCBJIGZvdW5kIHRoYXQgdGhlcmUgYXJlIHNldmVyYWwgaXNz
dWVzIGN1cnJlbnRseQo+PiA+IGV4aXN0aW5nIHdpdGggaXQ6Cj4+ID4gCj4+ID4gMS4gV2hlbiB0
aGUgc3lzdGVtIHN0YXJ0cyB1cCwgdGhlIGZpcnN0IHRpbWUgaXQgcmVhZHMgdGhlIEVESUQsIGl0
Cj4+ID4gICAgd2lsbCBmYWlsLiBUaGlzIGlzIGJlY2F1c2UgUkszMDM2IEhETUkgRERDIGJ1cyBy
ZXF1aXJlcyBpdCdzIFBIWSdzCj4+ID4gICAgcmVmZXJlbmNlIGNsb2NrIHRvIGJlIGVuYWJsZWQg
Zmlyc3QgYmVmb3JlIG5vcm1hbCBEREMgY29tbXVuaWNhdGlvbgo+PiA+ICAgIGNhbiBiZSBjYXJy
aWVkIG91dC4KPj4gPiAKPj4gPiAyLiBUaGUgc2lnbmFsIGlzIHVuc3RhYmxlLiBXaGVuIHJ1bm5p
bmcgdGhlIGdsbWFyazIgdGVzdCBvbiB0aGUgc2NyZWVuLAo+PiA+ICAgIHRoZXJlIGlzIGEgc21h
bGwgcHJvYmFiaWxpdHkgb2Ygc2VlaW5nIHNvbWUgc2NyZWVuIGZsaWNrZXJpbmcuCj4+ID4gICAg
VGhpcyBpcyBiZWNhdXNlIFRoZSBIU1lOQy9WU1lOQyBwb2xhcml0eSBvZiByazMwMzYgSERNSSBh
cmUgY29udHJvbGxlZAo+PiA+ICAgIGJ5IEdSRi4gVGhpcyBwYXJ0IGlzIG1pc3NpbmcgaW4gdGhl
IGN1cnJlbnQgZHJpdmVyLgo+PiA+IAo+PiA+IFBBVENIIDF+NiBhcmUgdHJ5IHRvIEZpeCBEb2N1
bWVudCBpbiB0aGUgZHQtYmluZGluZywgdGhlbiBhZGQgdGhlCj4+ID4gbWlzc2luZyBwYXJ0IGlu
IGRyaXZlciBhbmQgZHRzLgo+PiA+IFBBVENIIDcgY29udmVydHMgdGhlIGN1cnJlbiBkcml2ZXIg
dG8gZHJtIGJyaWRnZSBtb2RlLgo+PiAKPj4gQWZ0ZXIgcmVzdXJyZWN0aW5nIG15IHJrMzAzNi1r
eWxpbiB3aGljaCBoYXNuJ3Qgc3VjZXNzZnVsbHkgYm9vdGVkIGluIGEKPj4gd2hpbGUsIEkgY291
bGQgdmVyeWlmeSB0aGlzIHNlcmllcywgc28gb24gYSByazMwMzYta3lsaW4KPj4gCj4+IFRlc3Rl
ZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPj4gCj4+IAo+PiBJJ2xsIHBy
b2JhYmx5IGFwcGx5IHBhdGNoZXMgMS00IHRvIGRybS1taXNjIGxhdGVyIHRvZGF5LCBhcyB0aGF0
IHNvbGVseQo+PiB0b3VjaGVzIHRoZSBSb2NrY2hpcCAoYW5kIG9ubHkgcmszMDM2LSlzaWRlIGFu
ZCBwYXRjaGVzIDUrNiB0byB0aGUKPj4gcm9ja2NoaXAgdHJlZS4KPj4gCj4+IFBhdGNoIDcgc2hv
dWxkIHByb2JhYmx5IGdldCBzb21lIGF0dGVudGlvbiBieSBwZW9wbGUgbW9yZSBmYW1pbGlhciB3
aXRoCj4+IGRybS1icmlkZ2VzLCBzbyBJJ2xsIGxldCB0aGF0IHNpdCBmb3IgYSBiaXQgbG9uZ2Vy
Lgo+Cj5JIHdpbGwgdGFrZSBhIGxvb2sgbGF0ZXIsIGJ1dCBvbiB0aGUgZmlyc3QgZ2xhbmNlIGl0
IGxvb2tzIGxpa2UgdGhlcmUKPmFyZSB0b28gbWFueSB0aGluZ3MgZ29pbmcgb24gaW4gdGhhdCBw
YXRjaCwgaW5jbHVkaW5nIHNvbWUgdW5uZWNlc3NhcnkKPmZuY3Rpb24gbW92ZW1lbnRzIGFuZCBk
ZWZpbmUgbW92ZW1lbnRzLCBldGMuIEkgd291bGQga2luZGx5IGFzayB0byBzcGxpdAoKVGhlc2Ug
cmVnaXN0ZXJzIHdlcmUgaW5pdGlhbGx5IGRlZmluZWQgaW4gYSBzZXBhcmF0ZSBoZWFkZXIgZmls
ZShpbm5vX2hkbWkuaCksIApidXQgdGhleSB3ZXJlIG9ubHkgdXNlZCBieSBhIHNpbmdsZSBDIGZp
bGUsIHNvIEkgdGhpbmsgaXQncyBub3QgbmVjZXNzYXJ5IHRvIHB1dAp0aGVtIGluIGEgc2VwYXJh
dGUgaGVhZGVyIGZpbGUuIEkgZGVjaWRlZCB0byBzaW1wbHkgbWVyZ2UgdGhlbSBpbnRvIHRoZSBp
bm5vX2hkbWkuYyBmaWxlLiAKSWYgSSBmaXJzdCBjcmVhdGUgYSBwYXRjaCBhbmQgc2VwYXJhdGVs
eSBjYXJyeSBvdXQgdGhlIG1lcmdpbmcgb2YgdGhpcyByZWdpc3RlciBkZWZpbml0aW9uLCB3b3Vs
ZCB0aGF0IGJlIHBvc3NpYmxlPwoKQW5kIEkgd2lsbCB0cnkgdG8gYXZvaWQgZnVuY3Rpb24gbW92
ZW1lbnRzIGluIG5leHQgdmVyc2lvbi4KCgo+dGhlIG5vbi1mdW5jdGlvbmFsIHJlZmFjdG9yaW5n
cyBhbmQgdGhlIGZ1bmN0aW9uYWwgb25lcyAoc3BsaXR0aW5nIHRvIGEKPmxpYnJhcnksIGV0Yyku
CgpXaWxsIGRvIGluIG5leHQgdmVyc2lvbi4KCj4KPj4gCj4+IAo+PiBUaGFua3MgYSBsb3QgZm9y
IHdvcmtpbmcgb24gYWxsIHRoaXMKPj4gSGVpa28KPj4gCj4+IAo+Cj4tLSAKPldpdGggYmVzdCB3
aXNoZXMKPkRtaXRyeQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
