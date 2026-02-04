Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72133E9539C
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 13:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2MGTDFURQHqvh3iBxb0UClzRodqOT0ucMeldq0FaTZI=; b=wdzsFljfLvZL4l
	Mb2IVU3Tu9Hzh4ettxgqulSQdrjnDt/I20EgqpWOH6WwMKIuUzktKh3EYKkjXFecB7Kx0ZC3olJ/x
	AxadJDbrm5npECfmQhPpdHj3e4JIPoQGvQyBzjyhTyHFaOW+4jCVrDvq7XW3Zdh70wMjbJdpY3yiQ
	8fsfb+KlSgCnxECU2NuQ+yDcYu7s3aJkWrHlbOMX3nCu83m12Q+dZjlZ13kiD2YZ3hd+gNhVK5oau
	e4E18zKofK5x1vc6QcfN/ka34xxwxhADqZZ3yfqf0fBlLAXR0mv5PFYxg+NOkth2Y5sGe8S5u/snZ
	16Vs/S1GkiuFoKX0DWkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vncuW-00000008VVC-0Ryy;
	Wed, 04 Feb 2026 13:27:12 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vncuS-00000008VTx-2Ecq
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Feb 2026 13:27:10 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-34c93e0269cso565015a91.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Feb 2026 05:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770211627; x=1770816427; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wB0VLDAPToQ8yD4B2A1a5exUgv0J2v5YL3Ju3cLJeTI=;
        b=icA6IlJYLLuGJi8k62akX7TEJJvatMCX2WfaKkk1pm6kQsc34MbWmTUD4Hizh/LONf
         +xECSTLHekhKvudC0k7Wz4M5iMkljwXmm7jqxGa59IT4JvMaoIyUsWW0iTWfnoQQy1WD
         06NB8YJDVuxUxAu3aCvQVx6OmIZ8DUczmpE4JtAHpZhKiNkBTSAnBjkVLxVaNEkPo1xY
         giOFo3jAwexLxq4BbUwB5uy9s51KFXK/yHMKhwdjndqDRgf3OEHEnywtmCzweUhJPa60
         fQCy1FNJ01aepGeGc8HvW8Fr6L30vIdhbMaawo5Ud5iTx4qHQlB0eT84ttESpE4WFEbk
         56Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211627; x=1770816427;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wB0VLDAPToQ8yD4B2A1a5exUgv0J2v5YL3Ju3cLJeTI=;
        b=tuQreTvCF9ZJ71smLFh76JxiEy3kq5zO3nKNSengbZzy+4MulibWq49jxUPSs7rxNY
         tSPDx51b+76rcGb4Dp2cnwkMBHlj4QM4g1Xa8RrXs6fkcfSKZUmWxk1ebSwtC9eS8hlo
         JteLVaywr/Elk/mbheAfv+0q4IKNSNB7HIymOfpXr5LvSv/KHphs7oiYKbdOK7oyBudz
         rhmfFZCi8M8lwbWkYH581Bw/PNvDWrAO+o7IzfnQsbFH7L8o5Rb/1iGeijrpMNbmxK3h
         q1SMhEcnHfRbvUB4mFwAnfAsYf5tW1HwheOBjlkY+O3Cdqx/FE8a17FiNa+0MvK29kvy
         Se9Q==
X-Forwarded-Encrypted: i=1; AJvYcCW7SAuRyHJsqSmyvAPNXRmSuzVNsC2cDSx8eZFSBc2VqjuPhoRWoSafARpymaKVmTNAGlO5S5BJiKtUO3nq7g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzpp5tsxjS8QJS9mK03p2KBIyILj0YklZSk7SxY0MHvDs6gYYce
	Zek+CQV4t8fFGp2sjdAEuwCwfQMCXb//NPpECJ+yaJXBVHxpY38Sk45i
X-Gm-Gg: AZuq6aKCxtktePH4b0Y3rZpu/Ohansx5+bzDlXTD6cAzKRe5xO8uNWeYkQTiJrDTcRH
	7gEhFjfGSOpGRYg1vBtJmy9A0zhrXM9KySVdURJW1RbK6CLjxCPQmH4wiJrx12u8Es0aNkXTDof
	ZIQZXUt73edd91WYBTiiilLGMwxRRpGgZzULXwUX/ACnc3OvyMTac8poKZdZLSvxpBsuQaWs545
	mVl4bBEOC7Xk/tTdpqo3ZrAnVFw+XaRUysoq9+8dX7iaQsJD9Bv6n6MJsZt/voXCe3R1/wFWydy
	rAhIH0d+6fDArTaFMDmFTrQyA0fA4spRBvDGFh8th0C5Z9JAHaTuNggSEsctUYWSFbvSD1Xvk5C
	5AKE2qvQ+KUjG5DH1CgC00Zkk1DXRrZHCu9lF/u/yUnZuLMUY/VEYQUDgRPNN6p+mALPZSpBTRh
	0/pK7wlWwf
X-Received: by 2002:a17:90a:d64d:b0:352:d0cf:9d18 with SMTP id 98e67ed59e1d1-354776e0a54mr6454276a91.5.1770211627186;
        Wed, 04 Feb 2026 05:27:07 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35487726e6bsm875763a91.6.2026.02.04.05.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:27:06 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v4 0/3] board: rockchip: add OneThing Edge Cube series
Date: Wed,  4 Feb 2026 21:26:53 +0800
Message-ID: <20260204132700.329894-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_052708_576767_DCF51FCB 
X-CRM114-Status: GOOD (  13.12  )
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

VGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgT25lVGhpbmcgRWRnZSBDdWJlIHNlcmll
cywgUm9ja2NoaXAgClJLMzU2Ni1iYXNlZCBQQ0ROIChQMlAgQ29udGVudCBEZWxpdmVyeSBOZXR3
b3JrKSBkZXZpY2VzIG9yaWdpbmFsbHkgCm1hcmtldGVkIGJ5IE9uZVRoaW5nIFRlY2guCgpUaGUg
VjQgcGF0Y2ggaW5jbHVkZXMgbWlub3IgaW1wcm92ZW1lbnRzLgoKVGhlIFYzIHBhdGNoIG1lcmdl
cyB0aGUgc2VwYXJhdGUgZHRzIGZpbGVzIGZvciBPRUMgYW5kIE9FQy10dXJibywKZm9sbG93aW5n
IERyYWdhbiBTaW1pYydzIHN1Z2dlc3Rpb24uCgpUaGUgVjIgcGF0Y2ggYWRkcyBhIG5ldyBkZXZp
Y2UsIHRoZSBPbmVUaGluZyBPRUMuIFRvZ2V0aGVyIHdpdGggdGhlIApWMSBwYXRjaCBPbmVUaGlu
ZyBPRUMtdHVyYm8sIHRoZXNlIHR3byBkZXZpY2VzIHNoYXJlIGlkZW50aWNhbCBoYXJkd2FyZSAK
c3BlY2lmaWNhdGlvbnMgZXhjZXB0IGZvciB0aGUgUkFNIGNhcGFjaXR5LCBlbmFibGluZyBjb252
ZW5pZW50IHN1cHBvcnQKaW1wbGVtZW50YXRpb24uCgpUaGUgVjEgcGF0Y2ggd2FzIHN1Ym1pdHRl
ZCBxdWl0ZSBzb21lIHRpbWUgYWdvIGFuZCBpcyBub3cgaW4gYW4gYXJjaGl2ZWQKc3RhdGVbMV0u
IGl0IGhhcyBub3QgYmVlbiBwcm9jZXNzZWQgZHVlIHRvIHNjaGVkdWxpbmcgY29uZmxpY3RzIOKA
kwphcG9sb2dpZXMgZm9yIHRoaXMuCgpDaGFuZ2VzIGluIHY0OgotIFVzZSBhIHVuaWZpZWQgY29t
cGF0aWJsZSBuYW1lIGZvciBPRUMgYW5kIE9FQy10dXJiby4KLSBEcm9wIHRoZSAic2VyaWVzIiBz
dHJpbmcgZnJvbSB0aGUgYm9hcmQgZHRiIG5hbWUuCi0gVXNlIGEgc2VsZi1kZXNjcmlwdGl2ZSBt
b2RlbCBuYW1lIGZvciB0aGUgZHRiLgotIExpbmsgdG8gdjM6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC8yMDI2MDIwMjE1MDQzNy4yNzA1NjctMS1qZXJyeXN0ZXZlMTEwMUBnbWFpbC5jb20v
CgpDaGFuZ2VzIGluIHYzOgotIFVzZSBhIHNpbmdsZSBkZXZpY2UgdHJlZSBmb3IgYm90aCBPRUMg
YW5kIE9FQy10dXJiby4KLSBBbGlnbiB0aGUgY29tcGF0aWJsZSBzdHJpbmdzIGluIGR0LWJpbmRp
bmdzIGFuZCBkZXZpY2UgdHJlZS4KLSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvMjAyNjAxMzExNTMxMDYuMzE3MjMtMS1qZXJyeXN0ZXZlMTEwMUBnbWFpbC5jb20vCgpD
aGFuZ2VzIGluIHYyOgotIEZpeCB0eXBvIGluIHZlbmRvci1wcmVmaXhlcy4KLSBTaW1wbGlmeSBj
b21wYW55IGFuZCBkZXZpY2UgbmFtZXMuCi0gQWRkIHRoZSBuZXcgZGV2aWNlIE9FQyBhcyBwYXJ0
IG9mIHRoZSBPbmVUaGluZyBFZGdlIEN1YmUgc2VyaWVzIGZvciBzdXBwb3J0LgotIFNldCBkaXNw
bGF5LXN1YnN5c3RlbSBub2RlIHRvICJkaXNhYmxlZCIgaW5zdGVhZCBvZiB1c2luZyAiZGVsZXRl
LW5vZGUiLgotIFVzaW5nIGdlbmVyaWMgbm9kZSBuYW1lcyBmb3IgbGVkcy4KLSBGb2xsb3cgRFRT
IGNvZGVpbmcgc3R5bGUgaW4gdmNjNXYwX3VzYl9ob3N0X2VuIHBpbmN0cmwgbm9kZS4KLSBNb2Rp
ZnkgdGhlIHBoeV9tb2RlIG9mIEdNQUMgZnJvbSByZ21paSB0byByZ21paS1pZC4KLSBBZGp1c3Qg
ZGV2aWNlIHRyZWUgbm9kZSBvcmRlcmluZyB0byBmb2xsb3cgY29kZSBzdHlsZS4KLSBMaW5rIHRv
IHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA3MTMxNjMyNTUuMTYzNjY5LTEt
amVycnlzdGV2ZTExMDFAZ21haWwuY29tLwoKWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5v
cmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9jb3Zlci8yMDI1MDcxMzE2MzI1NS4xNjM2NjktMS1q
ZXJyeXN0ZXZlMTEwMUBnbWFpbC5jb20vCgpKdW4gWWFuICgzKToKICBkdC1iaW5kaW5nczogdmVu
ZG9yLXByZWZpeGVzOiBBZGQgU2hlbnpoZW4gT25lVGhpbmcgVGVjaG5vbG9naWVzIENvLiwKICAg
IEx0ZC4KICBkdC1iaW5kaW5nczogYXJtOiByb2NrY2hpcDogQWRkIE9uZVRoaW5nIEVkZ2UgQ3Vi
ZSBzZXJpZXMKICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIE9uZVRoaW5nIEVkZ2UgQ3ViZSBz
ZXJpZXMKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCAgICAgfCAg
IDUgKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgIHwgICAy
ICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICB8ICAgMSAr
CiAuLi4vcm9ja2NoaXAvcmszNTY2LW9uZXRoaW5nLWVkZ2UtY3ViZS5kdHMgICAgfCAzMTIgKysr
KysrKysrKysrKysrKysrCiA0IGZpbGVzIGNoYW5nZWQsIDMyMCBpbnNlcnRpb25zKCspCiBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtb25ldGhp
bmctZWRnZS1jdWJlLmR0cwoKLS0gCjIuNTIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
