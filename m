Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 869D6C43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jun 2022 04:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uhp/s16rmjkKcLMDiSHxkEJZiZkfP0wB3zZqffWu3d4=; b=pg4RdfpAubCISXb+5JUWvBjIJo
	jc1xaveGw25tE//rZ0jj5SocCSvzBeLUIFO6X85rooFdFlr2kfVu16ubUbqgfqGOSPLYkIyqWfxBD
	yiUtyzXQRYqntdpPPbFVzLMUm7ccMotD0IoY71hQVG0DV5zVEHYNCMW2Ie7EppIhIvWhKzkO4bxtI
	JCIT2kogva5NWu/5sT32cHO+4EeQjVMx1lX34xTPA07rH6CUtFfuMI3WYGYjfZSprQXTCCuVdWm1w
	9dDZ3ni3Ny5wKV20kyhbmXip+oZ4xT17YxEp1mDTYeYt2Kn1bVneUwiMbEQ95F6y20jNbVk6giq+R
	wjkZtNXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5JX5-009QNH-I3; Sun, 26 Jun 2022 04:05:59 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5JX2-009QL3-Ua
	for linux-rockchip@lists.infradead.org; Sun, 26 Jun 2022 04:05:58 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 1048932004F8;
	Sun, 26 Jun 2022 00:05:49 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sun, 26 Jun 2022 00:05:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1656216349; x=
	1656302749; bh=Fyqr39kqDTapjiaXukIEzLeA3TcvL5aGenhByxOZ9cw=; b=J
	8AFFaMnVAhg2GawAI/FATO47FUO8xQBlsOcvbFN+Zmh5UmhZUv6XhHnsjHktTNH2
	JNobrx56j5L/BIAicY8Itvn88GcCLI9eaNSg1xrQjS4KGwd9SipIHi8pW2kHU/iV
	lY3nzcC4XlePD54BWAJlhtpnLXLxbsdN9JBHw69b5bzWRLVSiqtzKxwKAxE/Y7Ks
	+8nzyqbrKt7O/zCF1YTG5J099s/WUUtQbcPS0FMGAEDxsvWHFgFJtxsGiDWUcLmm
	Yur7Si9UffIUIRzfIrVKM4hlBclUAmaCsHuBbs6Lnn70ubIUd/D/pqgxstifqP9T
	GA7D6T4MWQozAzY96eQGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1656216349; x=
	1656302749; bh=Fyqr39kqDTapjiaXukIEzLeA3TcvL5aGenhByxOZ9cw=; b=G
	TC3KbjQah0w1uKFbwbl1a0bsQFYzkExHqIPwF49tUgVX7vqWXmkvb0xwvEA9i6rb
	LexJ8hUAdkRaVdT6YujNw51wVAbJCh+PSqw9oF3v6HGP2Sbx5UPIyUoFgOe+avPt
	QmUQWOsJYNo0NFsW5GVsRfYVh3v4rhuijqIm61zh6L+9PgruiD524aO1s34wJSRw
	bIjgZZHmjSEGFtxkNHYs25QQ6KU5jL3GgV62zyDCAHL+kruY9+15vP1uooXPS86r
	Tk5cpaV+dm4KGufqobqpkNlfDf/8l5DF97BTkNYvZLTUBqzeb0/GV0odcoeGrufQ
	EgzoTILOCXQ6dFYQ2AbLg==
X-ME-Sender: <xms:Hdu3YqLEH-KbHZvcCJXPhjCJA4U0aWKtYcyHsT4MJ4Xp1WfRl6gF-Q>
    <xme:Hdu3YiJhftsREq35a1yrc5maQx2_OudHZdm_yQRs1m0ThCKnspCNAlSX94liXQko_
    hgx6oi5YZPfpEYfLZ4>
X-ME-Received: <xmr:Hdu3Yqs_zP79ovbnFhcGBI-hn_r0ZfiH__exoeSnSMDZgfUeTQTd4g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegvddgkedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpeffrghf
    nhgrucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqne
    cuggftrfgrthhtvghrnhepteehkefgjeegledtgeffhedtkefgiefgtedvjeelueegudet
    gedvgedufeevkefgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegurghfnhgrsehfrghsthhm
    rghilhdrtghomh
X-ME-Proxy: <xmx:Hdu3YvYpsj4c_YZoitVxzEakbELpRXVOxBvpEXGZdUWhJmksuDWdmQ>
    <xmx:Hdu3YhammgKatlBsNElt7tKmqJt3To_9o_re93miFkO2u8P1qzbS-Q>
    <xmx:Hdu3YrAXP76bMeWXlkuoO2O6WCiHXLv8ECHtrhPllklUMio7dJFefQ>
    <xmx:Hdu3Yt53qm1lp2IYBlToPYg9h7jC_45VNpMHxa9XCm2Ab2GIaO8sZw>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 26 Jun 2022 00:05:46 -0400 (EDT)
Date: Sun, 26 Jun 2022 07:05:43 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 48/55] media: rkisp1: Add match data for i.MX8MP ISP
Message-ID: <20220626040543.jswxbusyyydfoxfd@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-49-paul.elder@ideasonboard.com>
 <Yq0NnksDldH1PDfp@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yq0NnksDldH1PDfp@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220625_210557_208807_6C41F23F 
X-CRM114-Status: GOOD (  16.71  )
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

T24gMTguMDYuMjAyMiAwMjoyNiwgTGF1cmVudCBQaW5jaGFydCB3cm90ZToKPkhpIFBhdWwsCj4K
PlRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+Cj5PbiBXZWQsIEp1biAxNSwgMjAyMiBhdCAwNDox
MToyMEFNICswOTAwLCBQYXVsIEVsZGVyIHdyb3RlOgo+PiBBZGQgbWF0Y2ggZGF0YSB0byB0aGUg
cmtpc3AxIGRyaXZlciB0byBtYXRjaCB0aGUgaS5NWDhNUCBJU1AuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IFBhdWwgRWxkZXIgPHBhdWwuZWxkZXJAaWRlYXNvbmJvYXJkLmNvbT4KPj4gLS0tCj4+ICAu
Li4vcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1kZXYuYyAgICAgfCAyMiArKysrKysr
KysrKysrKysrKysrCj4+ICBpbmNsdWRlL3VhcGkvbGludXgvcmtpc3AxLWNvbmZpZy5oICAgICAg
ICAgICAgfCAgMyArKysKPj4gIDIgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtp
c3AxLWRldi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3Ax
LWRldi5jCj4+IGluZGV4IDYyZmEyYmQyNzVmZS4uM2EwMTE1YmRjZWU1IDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtZGV2LmMKPj4g
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWRldi5j
Cj4+IEBAIC00ODYsNiArNDg2LDI0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcmtpc3AxX2luZm8g
cmszMzk5X2lzcF9pbmZvID0gewo+PiAgCS5mZWF0dXJlcyA9IFJLSVNQMV9GRUFUVVJFX01JUElf
Q1NJMiwKPj4gIH07Cj4+Cj4+ICtzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IGlteDhtcF9pc3Bf
Y2xrc1tdID0gewo+PiArCSJpc3AiLAo+PiArCSJoY2xrIiwKPj4gKwkiYWNsayIsCj4+ICt9Owo+
PiArCj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJraXNwMV9pc3JfZGF0YSBpbXg4bXBfaXNwX2lz
cnNbXSA9IHsKPj4gKwl7IE5VTEwsIHJraXNwMV9pc3IgfSwKPj4gK307Cj4+ICsKPj4gK3N0YXRp
YyBjb25zdCBzdHJ1Y3Qgcmtpc3AxX2luZm8gaW14OG1wX2lzcF9pbmZvID0gewo+PiArCS5jbGtz
ID0gaW14OG1wX2lzcF9jbGtzLAo+PiArCS5jbGtfc2l6ZSA9IEFSUkFZX1NJWkUoaW14OG1wX2lz
cF9jbGtzKSwKPj4gKwkuaXNycyA9IGlteDhtcF9pc3BfaXNycywKPj4gKwkuaXNyX3NpemUgPSBB
UlJBWV9TSVpFKGlteDhtcF9pc3BfaXNycyksCj4+ICsJLmlzcF92ZXIgPSBJTVg4TVBfVjEwLAo+
PiArfTsKPj4gKwo+PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcmtpc3AxX29m
X21hdGNoW10gPSB7Cj4+ICAJewo+PiAgCQkuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxweDMwLWNp
Zi1pc3AiLAo+PiBAQCAtNDk1LDYgKzUxMywxMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rl
dmljZV9pZCBya2lzcDFfb2ZfbWF0Y2hbXSA9IHsKPj4gIAkJLmNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszMzk5LWNpZi1pc3AiLAo+PiAgCQkuZGF0YSA9ICZyazMzOTlfaXNwX2luZm8sCj4+ICAJ
fSwKPj4gKwl7Cj4+ICsJCS5jb21wYXRpYmxlID0gImZzbCxpbXg4bXAtaXNwIiwKPj4gKwkJLmRh
dGEgPSAmaW14OG1wX2lzcF9pbmZvLAo+PiArCX0sCj4+ICAJe30sCj4+ICB9Owo+PiAgTU9EVUxF
X0RFVklDRV9UQUJMRShvZiwgcmtpc3AxX29mX21hdGNoKTsKPj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvdWFwaS9saW51eC9ya2lzcDEtY29uZmlnLmggYi9pbmNsdWRlL3VhcGkvbGludXgvcmtpc3Ax
LWNvbmZpZy5oCj4+IGluZGV4IDU4M2NhMGQ5YTc5ZC4uNDA2NzdkNDc4MjVjIDEwMDY0NAo+PiAt
LS0gYS9pbmNsdWRlL3VhcGkvbGludXgvcmtpc3AxLWNvbmZpZy5oCj4+ICsrKyBiL2luY2x1ZGUv
dWFwaS9saW51eC9ya2lzcDEtY29uZmlnLmgKPj4gQEAgLTE0MCwxMiArMTQwLDE1IEBACj4+ICAg
KiBAUktJU1AxX1YxMTogZGVjbGFyZWQgaW4gdGhlIG9yaWdpbmFsIHZlbmRvciBjb2RlLCBidXQg
bm90IHVzZWQKPj4gICAqIEBSS0lTUDFfVjEyOiB1c2VkIGF0IGxlYXN0IGluIHJrMzMyNiBhbmQg
cHgzMAo+PiAgICogQFJLSVNQMV9WMTM6IHVzZWQgYXQgbGVhc3QgaW4gcmsxODA4Cj4+ICsgKiBA
SU1YOE1QX1YxMDogdXNlZCBpbiBhdCBsZWFzdCBpbXg4bXAKPj4gICAqLwo+PiAgZW51bSBya2lz
cDFfY2lmX2lzcF92ZXJzaW9uIHsKPj4gIAlSS0lTUDFfVjEwID0gMTAsCj4+ICAJUktJU1AxX1Yx
MSwKPj4gIAlSS0lTUDFfVjEyLAo+PiAgCVJLSVNQMV9WMTMsCj4+ICsJLyogVE9ETyBDaG9vc2Ug
YSBiZXR0ZXIgdmVyc2lvbiBmb3IgdGhpcyAqLwo+PiArCUlNWDhNUF9WMTAsCj4KPlRpbWUgdG8g
YWRkcmVzcyB0aGlzID8gOi0pCj4KPkRvZXMgYW55b25lIGtub3cgd2hlcmUgdGhlIGN1cnJlbnQg
dmVyc2lvbmluZyBzY2hlbWUgY29tZSBmcm9tID8KCkl0IHdhcyBhZGRlZCBieSBIZWlrbyBTdMO8
Ym5lciwgYmFzaWNhbGx5IHRyeWluZyB0byBmaWd1cmUgb3V0IHRoZQp2ZXJzaW9ucyBmcm9tIHRo
ZSB2ZWRvciBjb2RlLApzZWUgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjEwMTIxMTQ0
NDA3LjkwNDUtNi1kYWZuYS5oaXJzY2hmZWxkQGNvbGxhYm9yYS5jb20vCgp0aGFua3MsCkRhZm5h
Cgo+Cj4+ICB9Owo+Pgo+PiAgZW51bSBya2lzcDFfY2lmX2lzcF9oaXN0b2dyYW1fbW9kZSB7Cj4K
Pi0tIAo+UmVnYXJkcywKPgo+TGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
