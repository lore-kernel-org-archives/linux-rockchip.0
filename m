Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CEB9D2F7F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 07:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGCW8g1Ojvz/Z1VqCIIu7rlunBH/qORyN14NIOnwUpQ=; b=rl9q99m+g5DBe4
	gbvz6q9aQHhjD13V87cBRMaB07UF38vuoqMvx5a2j79zSJCxqukbToR436ujPbxDkfZDV6Yx01214
	k0mJM55+m5Ev2lOIcsaELxNs1iDOoKFa3z1i5flam8KoPA/gjdZJVMPqMfKK2/MaGZk8qAUOgkaM2
	kYl2VOwpQAYgAYBCLMRPaqMsJ31IAxWOyd6HS93vHPYrlKeDMKZCJU5jcxhw2DYuXXP3TOnqkqDlD
	85zMVvqzfK6L7Z5QscMYBtWJJpoSJZ3luGOtqjutU7I46EaY8jDAeXmKpyKiMGS7w2mjbA9ADfFji
	3vq3l5dtUtQ+4LR149XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Kg2-0000000Dxob-0nnA;
	Thu, 17 Oct 2024 07:12:06 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Kb4-0000000Dwym-2zSt;
	Thu, 17 Oct 2024 07:07:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=pZkl+4j57gL89iTlo4E7bNQmxI9KiAdbylpLF6/W3v4=; b=X
	+THcKB3GsLX7bInI/4LBuZ6oGoEncy/LzEW+A0lar5eW9hqUsA5upOO1IbcEZ/MB
	S8diIR+IeJ19qbesMAlMlZmA9uDCqwcers8RTR1TgFFqR6yKWTKmp73xIoSSTL1q
	qmDqVCD25kKG10yBpFAo1uQapSluuBgZhNmKHsoCm4=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-105 (Coremail) ; Thu, 17 Oct 2024 15:06:15 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 17 Oct 2024 15:06:15 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Robin Murphy" <robin.murphy@arm.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, 
	conor+dt@kernel.org, s.hauer@pengutronix.de, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com, 
	minhuadotchen@gmail.com, detlev.casanova@collabora.com, 
	xxm@rock-chips.com, "Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH v3 02/15] drm/rockchip: Set dma mask to 64 bit
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <b5e89288-d1c9-4c10-91b3-b1351b623ce6@arm.com>
References: <20240920081626.6433-1-andyshrk@163.com>
 <20240920082036.6623-1-andyshrk@163.com>
 <b5e89288-d1c9-4c10-91b3-b1351b623ce6@arm.com>
X-NTES-SC: AL_Qu2ZC/2ft08s4yGQZukXn0kXhec2W8Czvvgg34JRP5k0tyTsxzgGbW9cHXjP+s6ULwOhoAi6XyNfxM5FYqxheYeAU5PLuzqMIcuGcmR/o0cw
MIME-Version: 1.0
Message-ID: <b7d9dff.663d.192994c6b14.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: aSgvCgDnb0xqtxBnQxQQAA--.38170W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqRp7XmcQsHul4QABsv
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_000659_160349_B47ECAC8 
X-CRM114-Status: GOOD (  21.31  )
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

CgpIaSBSb2JpbiwKCiBUaGFua3MgZm9yIHlvdXIgY29tbWVudOOAggoKQXQgMjAyNC0xMC0xNyAw
MTozODoyMywgIlJvYmluIE11cnBoeSIgPHJvYmluLm11cnBoeUBhcm0uY29tPiB3cm90ZToKPk9u
IDIwMjQtMDktMjAgOToyMCBhbSwgQW5keSBZYW4gd3JvdGU6Cj4+IEZyb206IEFuZHkgWWFuIDxh
bmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4gCj4+IFRoZSB2b3AgbW11IHN1cHBvcnQgdHJhbnNs
YXRlIHBoeXNpY2FsIGFkZHJlc3MgdXBwZXIgNCBHQiB0byBpb3ZhCj4+IGJlbG93IDQgR0IuIFNv
IHNldCBkbWEgbWFzayB0byA2NCBiaXQgdG8gaW5kaWNhdGUgd2Ugc3VwcG9ydCBhZGRyZXNzCj4+
PiA0R0IuCj4+IAo+PiBUaGlzIGNhbiBhdm9pZCB3YXJuZ2luZyBtZXNzYWdlIGxpa2UgdGhpcyBv
biBzb21lIGJvYXJkcyB3aXRoIEREUgo+Pj4gNCBHQjoKPj4gCj4+IHJvY2tjaGlwLWRybSBkaXNw
bGF5LXN1YnN5c3RlbTogc3dpb3RsYiBidWZmZXIgaXMgZnVsbCAoc3o6IDI2NjI0MCBieXRlcyks
IHRvdGFsIDMyNzY4IChzbG90cyksIHVzZWQgMTMwIChzbG90cykKPj4gcm9ja2NoaXAtZHJtIGRp
c3BsYXktc3Vic3lzdGVtOiBzd2lvdGxiIGJ1ZmZlciBpcyBmdWxsIChzejogMjY2MjQwIGJ5dGVz
KSwgdG90YWwgMzI3NjggKHNsb3RzKSwgdXNlZCAwIChzbG90cykKPj4gcm9ja2NoaXAtZHJtIGRp
c3BsYXktc3Vic3lzdGVtOiBzd2lvdGxiIGJ1ZmZlciBpcyBmdWxsIChzejogMjY2MjQwIGJ5dGVz
KSwgdG90YWwgMzI3NjggKHNsb3RzKSwgdXNlZCAxMzAgKHNsb3RzKQo+PiByb2NrY2hpcC1kcm0g
ZGlzcGxheS1zdWJzeXN0ZW06IHN3aW90bGIgYnVmZmVyIGlzIGZ1bGwgKHN6OiAyNjYyNDAgYnl0
ZXMpLCB0b3RhbCAzMjc2OCAoc2xvdHMpLCB1c2VkIDEzMCAoc2xvdHMpCj4+IHJvY2tjaGlwLWRy
bSBkaXNwbGF5LXN1YnN5c3RlbTogc3dpb3RsYiBidWZmZXIgaXMgZnVsbCAoc3o6IDI2NjI0MCBi
eXRlcyksIHRvdGFsIDMyNzY4IChzbG90cyksIHVzZWQgMCAoc2xvdHMpCj4KPlRoZXJlIGFyZSBz
ZXZlcmFsIHRoaW5ncyB3cm9uZyB3aXRoIHRoaXMuLi4KPgo+QUZBSUNTIHRoZSBWT1AgaXRzZWxm
IHN0aWxsIG9ubHkgc3VwcG9ydHMgMzItYml0IGFkZHJlc3Nlcywgc28gdGhlIFZPUCAKPmRyaXZl
ciBzaG91bGQgb25seSBiZSBzZXR0aW5nIGEgMzItYml0IERNQSBtYXNrLiBUaGUgSU9NTVVzIHN1
cHBvcnQgCj5laXRoZXIgMzItYml0IG9yIDQwLWJpdCBhZGRyZXNzZXMsIGFuZCB0aGUgSU9NTVUg
ZHJpdmVyIGRvZXMgc2V0IGl0cyBETUEgCkRvZXMgdGhhdCBtZWFuIHdlIGNhbiBvbmx5IHVzZSB0
aGUgZGV2IG9mIElPTU1VID8gSWYgdGhhdCBpcyB0cnVl77yMIHdvdWxkIHlvdQpwbGVhc2UgZ2l2
ZSBzb21lIGluc3BpcmF0aW9uIG9uIGhvdyB0byBpbXBsZW1lbnQgdGhpcz8gT3IgaXMgdGhlcmUg
YW55IG90aGVyCmRpdmVyIGkgY2FuIGZvbGxvd+OAglZlcnkgc29ycnkgZm9yIHRoYXQgIEknbSBu
b3QgZmFtaWxpYXIgd2l0aCBtZW1vcnkgbWFuYWdlbWVudCBhbmQgdGhlIElPTU1V44CCCgoKPm1h
c2sgYXBwcm9wcmlhdGVseS4gTm9uZSBvZiB0aG9zZSBudW1iZXJzIGlzIDY0LCBzbyB0aGF0J3Mg
Y2xlYXJseSAKPnN1c3BpY2lvdXMgYWxyZWFkeS4gUGx1cyBpdCB3b3VsZCBzZWVtIHRoZSBjbGFp
bSBvZiB0aGUgSU9NTVUgYmVpbmcgYWJsZSAKPnRvIGFkZHJlc3MgPjRHQiBpc24ndCBzdHJpY3Rs
eSB0cnVlIGZvciBSSzMyODggKHdoaWNoIGRvZXMgc3VwcG9zZWRseSAKPnN1cHBvcnQgOEdCIG9m
IFJBTSkuCgpXZSBjYW4gc2V0IERNQSBtYXNrIHBlciBkZXZpY2UgaWYgd2UgY2FuIGZpbmQgYSBy
aWdodCB3YXkgdG8gZG8gaXTjgIIKCj4KPkZ1cnRoZXJtb3JlLCB0aGUgImRpc3BsYXktc3Vic3lz
dGVtIiBkb2Vzbid0IGV2ZW4gZXhpc3QgLSBpdCBkb2VzIG5vdCAKPnJlcHJlc2VudCBhbnkgYWN0
dWFsIERNQS1jYXBhYmxlIGhhcmR3YXJlLCBzbyBpdCBzaG91bGQgbm90IGhhdmUgYSBETUEgCj5t
YXNrLCBhbmQgaXQgc2hvdWxkIG5vdCBiZSB1c2VkIGZvciBETUEgQVBJIG9wZXJhdGlvbnMuIEJ1
ZmZlcnMgZm9yIHRoZSAKPlZPUCBzaG91bGQgYmUgRE1BLW1hcHBlZCBmb3IgdGhlIFZPUCBkZXZp
Y2UgaXRzZWxmLiBBdCB0aGUgdmVyeSBsZWFzdAo+dGhlIHJvY2tjaGlwX2dlbV9hbGxvY19kbWEo
KSBwYXRoIGlzIGNsZWFybHkgYnJva2VuIG90aGVyd2lzZSAoSSBndWVzcyAKPnRoaXMgcGF0Y2gg
cG9zc2libHkgKndvdWxkKiBtYWtlIHRoYXQgYnJva2VubmVzcyBhcHBhcmVudCkuCj4KPj4gU2ln
bmVkLW9mZi1ieTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+PiBUZXN0ZWQt
Ynk6IERlcmVrIEZvcmVtYW4gPGRlcmVrLmZvcmVtYW5AY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+
IAo+PiAobm8gY2hhbmdlcyBzaW5jZSB2MSkKPj4gCj4+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV9kcnYuYyB8IDQgKysrLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV9kcnYuYwo+PiBpbmRleCAwNGVmN2EyYzM4MzMuLjhiYzJmZjNiMDRi
YiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9k
cnYuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5j
Cj4+IEBAIC00NDUsNyArNDQ1LDkgQEAgc3RhdGljIGludCByb2NrY2hpcF9kcm1fcGxhdGZvcm1f
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gICAJCXJldHVybiByZXQ7Cj4+
ICAgCX0KPj4gICAKPj4gLQlyZXR1cm4gMDsKPj4gKwlyZXQgPSBkbWFfY29lcmNlX21hc2tfYW5k
X2NvaGVyZW50KGRldiwgRE1BX0JJVF9NQVNLKDY0KSk7Cj4KPkZpbmFsbHkgYXMgYSBnZW5lcmFs
IHRoaW5nLCBwbGVhc2UgZG9uJ3QgbWlzdXNlIAo+ZG1hX2NvZXJjZV9tYXNrX2FuZF9jb2hlcmVu
dCgpIGluIHBsYXRmb3JtIGRyaXZlcnMsIGp1c3QgdXNlIG5vcm1hbCAKPmRtYV9zZXRfbWFza19h
bmRfY29oZXJlbnQoKS4gVGhlIHBsYXRmb3JtIGJ1cyBjb2RlIGhhcyBiZWVuIGluaXRpYWxpc2lu
ZyAKPnRoZSBkZXYtPmRtYV9tYXNrIHBvaW50ZXIgZm9yIHllYXJzIG5vdywgZHJpdmVycyBzaG91
bGQgbm90IGJlIG1lc3NpbmcgCj53aXRoIGl0IGFueSBtb3JlLgoKR290IGl0IO+8jCB0aGFua3Mg
YWdhaW7jgIIKCj4KPlRoYW5rcywKPlJvYmluLgo+Cj4+ICsKPj4gKwlyZXR1cm4gcmV0Owo+PiAg
IH0KPj4gICAKPj4gICBzdGF0aWMgdm9pZCByb2NrY2hpcF9kcm1fcGxhdGZvcm1fcmVtb3ZlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
