Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BC8DC5B54A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8W77jSmfOPCKjwZUlmMPYeEkpX6mBB584d3E0ZPZaw0=; b=neWNjAmiLfp85JiK4wqWR70sHS
	Abbo6aEeBMAtfJYhUm9BVHh3fNaGn/CTzgRugsVbFZu1XE2MNrcq9ckuMBQVMCRqjjQ6uAPrdatN/
	nlV6hFMAGosCSUQ2n9iY0ZpChVJPqfeSFDhay768bZLDb+tuG0Hr28GWrPE4HWpyHLPn8DPPyqIJc
	M9p+Ba4Ng7sM/t3yxLgEr1Smu+i0yeCz865AoXHHPRSXAcKkrWd7vMOyJCt4kQnzk3gTjdjlAbSXO
	sF4Q49ygsymdu7Ro4AIVf5YcB2XrfPup6cJvl56vp/WWr+9awHmp4gHOE5SFXef+PSjEYnoRQEYH7
	Omko9Y3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKpN-0000000G1zj-2gdc;
	Wed, 28 Aug 2024 15:43:21 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKVn-0000000Fwzb-0O2s;
	Wed, 28 Aug 2024 15:23:08 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724858582; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=n/0UeusnXOCvaEaJ1nhapBysPWJg8696ZD22LhKwNOjMIrmhYm6Hh/g1hJ2z3QffkO4VuqYZoxTZXKLyZ/VTyATeBFUvyW/ZTdjjq0xEj/BL5lEofKZ3SyCH2dTGpVenvq19l/KefQXVK3WIUe8zflbpzEzhS3fqEqfVoADkWcY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724858582; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=XCKdPShM2BSsjoKUXd5jLwgut9vQqNvq4fosnc20z7A=; 
	b=OP92ZjLenjEMMDFT+eHK7WNuPjfEm8fEPF52kLJYyZgF60nuoeQ6TmTaNF/rShu+hbGPRqPXTNzN3OP53bxDne9Uq8QHMJ9MK/q3vMknoCQWTbv1dUAWmiKyoRQ0RKe4AwCrlVwpwPxUnOKdJQQDDrK4d1klaeYMRNqMVbpR76U=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=helen.koike@collabora.com;
	dmarc=pass header.from=<helen.koike@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724858582;
	s=zohomail; d=collabora.com; i=helen.koike@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=XCKdPShM2BSsjoKUXd5jLwgut9vQqNvq4fosnc20z7A=;
	b=Dzkh270iCgK9bLYwALngFlgSPGwMdPTS1B0v6XJC1P80G0jRtoqar0Eds6Zhlh12
	A6c93FpxNKjl5bogYxOE5VQ9ept63a2EgrUR6Vojrmsbfi6AhNbfmU3XHd//hy/UhZT
	8qK23+cNsxfQjZuN+ibJPBV//LGXRxKEljTN573A=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 17248585802298.455583977077822; Wed, 28 Aug 2024 08:23:00 -0700 (PDT)
Date: Wed, 28 Aug 2024 12:23:00 -0300
From: Helen Mae Koike Fornazier <helen.koike@collabora.com>
To: "Rob Clark" <robdclark@gmail.com>
Cc: "Vignesh Raman" <vignesh.raman@collabora.com>,
	"dri-devel" <dri-devel@lists.freedesktop.org>,
	"daniels" <daniels@collabora.com>, "airlied" <airlied@gmail.com>,
	"daniel" <daniel@ffwll.ch>,
	"guilherme.gallo" <guilherme.gallo@collabora.com>,
	"sergi.blanch.torne" <sergi.blanch.torne@collabora.com>,
	"deborah.brouwer" <deborah.brouwer@collabora.com>,
	"linux-mediatek" <linux-mediatek@lists.infradead.org>,
	"linux-amlogic" <linux-amlogic@lists.infradead.org>,
	"linux-rockchip" <linux-rockchip@lists.infradead.org>,
	"amd-gfx" <amd-gfx@lists.freedesktop.org>,
	"linux-arm-msm" <linux-arm-msm@vger.kernel.org>,
	"intel-gfx" <intel-gfx@lists.freedesktop.org>,
	"virtualization" <virtualization@lists.linux.dev>,
	"linux-kernel" <linux-kernel@vger.kernel.org>
Message-ID: <19199953cbf.ded17a68157355.1209172729493560159@collabora.com>
In-Reply-To: <CAF6AEGu-T4=3jPRcnq3BFBtfb_yhmWE2b8EgxgTm5Q0bqSv04Q@mail.gmail.com>
References: <20240820070818.1124403-1-vignesh.raman@collabora.com> <CAF6AEGu-T4=3jPRcnq3BFBtfb_yhmWE2b8EgxgTm5Q0bqSv04Q@mail.gmail.com>
Subject: Re: [PATCH v1] drm/ci: increase timeout for all jobs
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_082307_211167_88FDA973 
X-CRM114-Status: GOOD (  14.13  )
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

CgoKCi0tLS0gT24gVHVlLCAyNyBBdWcgMjAyNCAxOTowNDo0MiAtMDMwMCBSb2IgQ2xhcmsgIHdy
b3RlIC0tLQoKID4gT24gVHVlLCBBdWcgMjAsIDIwMjQgYXQgMTI6MDnigK9BTSBWaWduZXNoIFJh
bWFuIAogPiB2aWduZXNoLnJhbWFuQGNvbGxhYm9yYS5jb20+IHdyb3RlOiAKID4gPiAKID4gPiBT
ZXQgdGhlIHRpbWVvdXQgb2YgYWxsIGRybS1jaSBqb2JzIHRvIDFoMzBtIHNpbmNlIAogPiA+IHNv
bWUgam9icyB0YWtlcyBtb3JlIHRoYW4gMSBob3VyIHRvIGNvbXBsZXRlLiAKID4gPiAKID4gPiBT
aWduZWQtb2ZmLWJ5OiBWaWduZXNoIFJhbWFuIHZpZ25lc2gucmFtYW5AY29sbGFib3JhLmNvbT4g
CiA+ICAKID4gQWNrZWQtYnk6IFJvYiBDbGFyayByb2JkY2xhcmtAZ21haWwuY29tPiAKCkFwcGxp
ZWQgdG8gZHJtLW1pc2MtbmV4dC4KClRoYW5rcwpIZWxlbgoKID4gIAogPiA+IC0tLSAKID4gPiAg
ZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3QueW1sIHwgNSArKysrLSAKID4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKSAKID4gPiAKID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3QueW1sIGIvZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3Qu
eW1sIAogPiA+IGluZGV4IGI2ZjQyOGNkYWY5NC4uMDlkODQ0Nzg0MGU5IDEwMDY0NCAKID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vY2kvdGVzdC55bWwgCiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2NpL3Rlc3QueW1sIAogPiA+IEBAIC0xMCw2ICsxMCw3IEBAIAogPiA+ICAubGF2YS10ZXN0
OiAKID4gPiAgICBleHRlbmRzOiAKID4gPiAgICAgIC0gLnRlc3QtcnVsZXMgCiA+ID4gKyAgdGlt
ZW91dDogIjFoMzBtIiAKID4gPiAgICBzY3JpcHQ6IAogPiA+ICAgICAgIyBOb3RlOiBCdWlsZCBk
aXIgKGFuZCB0aHVzIGluc3RhbGwpIG1heSBiZSBkaXJ0eSBkdWUgdG8gR0lUX1NUUkFURUdZIAog
PiA+ICAgICAgLSBybSAtcmYgaW5zdGFsbCAKID4gPiBAQCAtNzEsNiArNzIsNyBAQCAKID4gPiAg
ICAgIC0gLmJhcmVtZXRhbC10ZXN0LWFybTY0IAogPiA+ICAgICAgLSAudXNlLWRlYmlhbi9iYXJl
bWV0YWxfYXJtNjRfdGVzdCAKID4gPiAgICAgIC0gLnRlc3QtcnVsZXMgCiA+ID4gKyAgdGltZW91
dDogIjFoMzBtIiAKID4gPiAgICB2YXJpYWJsZXM6IAogPiA+ICAgICAgRkRPX0NJX0NPTkNVUlJF
TlQ6IDEwIAogPiA+ICAgICAgSFdDSV9URVNUX1NDUklQVDogIi9pbnN0YWxsL2lndF9ydW5uZXIu
c2giIAogPiA+IEBAIC0yMTUsNyArMjE3LDYgQEAgcGFuZnJvc3Q6cmszMzk5OiAKID4gPiAgICBl
eHRlbmRzOiAKID4gPiAgICAgIC0gLmxhdmEtaWd0Ong4Nl82NCAKID4gPiAgICBzdGFnZTogaTkx
NSAKID4gPiAtICB0aW1lb3V0OiAiMWgzMG0iIAogPiA+ICAgIHZhcmlhYmxlczogCiA+ID4gICAg
ICBEUklWRVJfTkFNRTogaTkxNSAKID4gPiAgICAgIERUQjogIiIgCiA+ID4gQEAgLTQxNCw2ICs0
MTUsNyBAQCBwYW5mcm9zdDpnMTJiOiAKID4gPiAKID4gPiAgdmlydGlvX2dwdTpub25lOiAKID4g
PiAgICBzdGFnZTogc29mdHdhcmUtZHJpdmVyIAogPiA+ICsgIHRpbWVvdXQ6ICIxaDMwbSIgCiA+
ID4gICAgdmFyaWFibGVzOiAKID4gPiAgICAgIENST1NWTV9HQUxMSVVNX0RSSVZFUjogbGx2bXBp
cGUgCiA+ID4gICAgICBEUklWRVJfTkFNRTogdmlydGlvX2dwdSAKID4gPiBAQCAtNDM2LDYgKzQz
OCw3IEBAIHZpcnRpb19ncHU6bm9uZTogCiA+ID4gCiA+ID4gIHZrbXM6bm9uZTogCiA+ID4gICAg
c3RhZ2U6IHNvZnR3YXJlLWRyaXZlciAKID4gPiArICB0aW1lb3V0OiAiMWgzMG0iIAogPiA+ICAg
IHZhcmlhYmxlczogCiA+ID4gICAgICBEUklWRVJfTkFNRTogdmttcyAKID4gPiAgICAgIEdQVV9W
RVJTSU9OOiBub25lIAogPiA+IC0tIAogPiA+IDIuNDMuMCAKID4gPiAKID4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
