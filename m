Return-Path: <SRS0=Ggyc=PC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D66C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 18:17:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5949461139
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 18:17:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5949461139
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKgpOIfDvBNNzDzFRojv9/FSc6HS48bS8tZjqpSz5zs=; b=ZsSczUyZjCSCTF
	RWB3gx5BItd9WJh/s2c6RPMvaoWdoVJgIi5spSL4NAnM8h8r4MWOTW7hs71XbhJU8zDQtw9SnH8zu
	ZIGspVVqh3liZrYTGO2bmpUhVpIDuyzoPVg+yzym5aPnLCzxZQUImrUu3WPqSGTZOKnPYAJK1ISvf
	pyVmbcfpDGojcNFx5xfnpAUepVNtIl2t5cOjGTy19MzAmwRodNXHrrrOVNIDuZJsESCVdpwLXnYA7
	ZTCyBwm2HxWJdwOifLbCPOnUFUI2To6AFhs9J+0UZvokaNy3owK6xJ/2WtxZbH86J7DbOkOqDuYjk
	GrHmQlNeV/UMDLZZOPVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mb5IP-0045Oe-TE; Thu, 14 Oct 2021 18:17:37 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mb5IM-0045MC-Cj
 for linux-rockchip@lists.infradead.org; Thu, 14 Oct 2021 18:17:35 +0000
Received: by mail-qt1-x835.google.com with SMTP id w8so6598117qts.4
 for <linux-rockchip@lists.infradead.org>; Thu, 14 Oct 2021 11:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=OEEd2cZz+5NtWxzZjnRv5kBD8Q+8n+rDsDbFQ5ZVdRI=;
 b=MwqrP67vQCP/2gZMbjBQtK6ZWzIAuuX6sI8w42Gs6Wvv9YjdEyriCGLvXKULSOjB4j
 wo0sJ68zV9BOn1EM2DO5mRXZFKNpbwGpqKDZGa71elfQp0nsDeyBrNwmDR/3AJk/hP+x
 Iy+tNHpgJA8vMcXEH5IpqnkymS/feWQNPkKXs/vVNmJScgYlTl9Ia8DnJJBK+Vjbn1pJ
 YecyR+1OV4Na9aKiK2qL8NzzwIv08CFtFmIWmjWI00q1a3BDpjYpw+G63RqNjs53seo0
 kS1avpOANu/S2DrhMQ52mEBi/VBWMEQViMsW+HIQ69f+6URK54VJE0YNFx0tNnQspugM
 J5lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=OEEd2cZz+5NtWxzZjnRv5kBD8Q+8n+rDsDbFQ5ZVdRI=;
 b=R71P7+91J99AzTBtp9lKZCcH4Ejksw4vKR+g9Bcc2rJ/kHQ482zI8lW7h5Y7gEEewu
 3R1c031kAAKrdftFlagEqu2DjIE4rDMKrvgyyTkvVHk0pqbXJhy+jT5HIoXLJsJOU3Ab
 +MeqSps69+uoYVCIBXWHyWL2TFYfHnVGtzCYu90yHIykJ87re84cyu6QLUm9XjSxalYA
 OeNzjqAie863fYk5V1DoZ54rjO0i46jEDoCROUXg5l4j0VAuGUElt+1fr7pCu6vyUHHy
 ek6JZna331CqS9tay8KKn7+nrxX7Cr3H0LCf7Zw4gWoYuwAOgIbhREsg/ig66Y9LW8Q1
 BDlg==
X-Gm-Message-State: AOAM532iTUvKj1BYFqXpyh5ArAQr2a/qkFt6tgmr/EhraNB7hqaof5+S
 EupLbcPyV0eDWe1lS5BqwqyFPA==
X-Google-Smtp-Source: ABdhPJxnyYhk/kPVe3wuRXfD7Pz1FhiCeveW6GVfEn0nMQSPEaHV0wi93Rq1om7zyTgxkR8sAYfTXA==
X-Received: by 2002:ac8:5e51:: with SMTP id i17mr8207997qtx.339.1634235452046; 
 Thu, 14 Oct 2021 11:17:32 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id d11sm1932855qtb.39.2021.10.14.11.17.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Oct 2021 11:17:31 -0700 (PDT)
Message-ID: <2fe158874e627d2aab97901916a63d884826b6ec.camel@ndufresne.ca>
Subject: [BUG] Re: [PATCH v3 07/10] media: hantro: Enable H.264 on Rockchip
 VDPU2
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 Alex Bee <knaerzche@gmail.com>,  maccraft123mc@gmail.com, Chris Healy
 <cphealy@gmail.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jonas Karlman <jonas@kwiboo.se>, Kever Yang <kever.yang@rock-chips.com>,
 kernel@collabora.com
Date: Thu, 14 Oct 2021 14:17:29 -0400
In-Reply-To: <20210719205242.18807-8-ezequiel@collabora.com>
References: <20210719205242.18807-1-ezequiel@collabora.com>
 <20210719205242.18807-8-ezequiel@collabora.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_111734_455984_AEEF9254 
X-CRM114-Status: GOOD (  17.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

TGUgbHVuZGkgMTkganVpbGxldCAyMDIxIMOgIDE3OjUyIC0wMzAwLCBFemVxdWllbCBHYXJjaWEg
YSDDqWNyaXTCoDoKPiBHaXZlbiBILjI2NCBzdXBwb3J0IGZvciBWRFBVMiB3YXMganVzdCBhZGRl
ZCwgbGV0J3MgZW5hYmxlIGl0Lgo+IEZvciBub3csIHRoaXMgaXMgb25seSBlbmFibGVkIG9uIHBs
YXRmb3JtIHRoYXQgZG9uJ3QgaGF2ZQo+IGFuIFJLVkRFQyBjb3JlLCBzdWNoIGFzIFJLMzMyOC4K
ClRoZXJlIGlzIGEgc21hbGwgb29wcywgdGhlIGRlY29kZXIgaXMgbm93IHZpc2libGUgb24gUksz
Mzk5LiBBdCBsZWFzdCBmb3IKR1N0cmVhbWVyLCBpdCBnb3QgdHJpY2tlZCBpbiBwaWNraW5nIGl0
IGJ5IGRlZmF1bHQsIHdoaWNoIHJlZ3Jlc3MgZGVjb2RpbmcKcGVyZm9ybWFuY2UuIEkgc3RpbGwg
dGhpbmsgd2Ugc2hvdWxkIHdhaXQgYmVmb3JlIGVuYWJsaW5nIGl0IHVudGlsIHdlIGtub3cgdGhh
dAp1c2Vyc3BhY2UgaGF2ZSBpbmZyYXN0cnVjdHVyZSB0byByYW5rIHRoZW0gcHJvcGVybHkuCgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNv
bT4KPiBUZXN0ZWQtYnk6IEFsZXggQmVlIDxrbmFlcnpjaGVAZ21haWwuY29tPgo+IC0tLQo+ICAu
Li4vc3RhZ2luZy9tZWRpYS9oYW50cm8vcm9ja2NoaXBfdnB1X2h3LmMgICAgfCAyNiArKysrKysr
KysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vcm9j
a2NoaXBfdnB1X2h3LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL3JvY2tjaGlwX3Zw
dV9ody5jCj4gaW5kZXggM2NjYzE2NDEzZjQyLi5lNGUzYjVlNzY4OWIgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9yb2NrY2hpcF92cHVfaHcuYwo+ICsrKyBiL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vcm9ja2NoaXBfdnB1X2h3LmMKPiBAQCAtMTYyLDYg
KzE2MiwxOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgcmszMzk5X3ZwdV9kZWNf
Zm10c1tdID0gewo+ICAJCS5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfTlYxMiwKPiAgCQkuY29kZWNf
bW9kZSA9IEhBTlRST19NT0RFX05PTkUsCj4gIAl9LAo+ICsJewo+ICsJCS5mb3VyY2MgPSBWNEwy
X1BJWF9GTVRfSDI2NF9TTElDRSwKPiArCQkuY29kZWNfbW9kZSA9IEhBTlRST19NT0RFX0gyNjRf
REVDLAo+ICsJCS5tYXhfZGVwdGggPSAyLAo+ICsJCS5mcm1zaXplID0gewo+ICsJCQkubWluX3dp
ZHRoID0gNDgsCj4gKwkJCS5tYXhfd2lkdGggPSAxOTIwLAo+ICsJCQkuc3RlcF93aWR0aCA9IE1C
X0RJTSwKPiArCQkJLm1pbl9oZWlnaHQgPSA0OCwKPiArCQkJLm1heF9oZWlnaHQgPSAxMDg4LAo+
ICsJCQkuc3RlcF9oZWlnaHQgPSBNQl9ESU0sCj4gKwkJfSwKPiArCX0sCj4gIAl7Cj4gIAkJLmZv
dXJjYyA9IFY0TDJfUElYX0ZNVF9NUEVHMl9TTElDRSwKPiAgCQkuY29kZWNfbW9kZSA9IEhBTlRS
T19NT0RFX01QRUcyX0RFQywKPiBAQCAtMzg4LDYgKzQwMSwxMiBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGhhbnRyb19jb2RlY19vcHMgcmszMzk5X3ZwdV9jb2RlY19vcHNbXSA9IHsKPiAgCQkuaW5p
dCA9IGhhbnRyb19qcGVnX2VuY19pbml0LAo+ICAJCS5leGl0ID0gaGFudHJvX2pwZWdfZW5jX2V4
aXQsCj4gIAl9LAo+ICsJW0hBTlRST19NT0RFX0gyNjRfREVDXSA9IHsKPiArCQkucnVuID0gcm9j
a2NoaXBfdnB1Ml9oMjY0X2RlY19ydW4sCj4gKwkJLnJlc2V0ID0gcm9ja2NoaXBfdnB1Ml9kZWNf
cmVzZXQsCj4gKwkJLmluaXQgPSBoYW50cm9faDI2NF9kZWNfaW5pdCwKPiArCQkuZXhpdCA9IGhh
bnRyb19oMjY0X2RlY19leGl0LAo+ICsJfSwKPiAgCVtIQU5UUk9fTU9ERV9NUEVHMl9ERUNdID0g
ewo+ICAJCS5ydW4gPSByb2NrY2hpcF92cHUyX21wZWcyX2RlY19ydW4sCj4gIAkJLnJlc2V0ID0g
cm9ja2NoaXBfdnB1Ml9kZWNfcmVzZXQsCj4gQEAgLTQzMyw2ICs0NTIsOCBAQCBzdGF0aWMgY29u
c3QgY2hhciAqIGNvbnN0IHJvY2tjaGlwX3ZwdV9jbGtfbmFtZXNbXSA9IHsKPiAgCSJhY2xrIiwg
ImhjbGsiCj4gIH07Cj4gIAo+ICsvKiBWRFBVMS9WRVBVMSAqLwo+ICsKPiAgY29uc3Qgc3RydWN0
IGhhbnRyb192YXJpYW50IHJrMzAzNl92cHVfdmFyaWFudCA9IHsKPiAgCS5kZWNfb2Zmc2V0ID0g
MHg0MDAsCj4gIAkuZGVjX2ZtdHMgPSByazMwNjZfdnB1X2RlY19mbXRzLAo+IEBAIC00OTUsMTEg
KzUxNiwxNCBAQCBjb25zdCBzdHJ1Y3QgaGFudHJvX3ZhcmlhbnQgcmszMjg4X3ZwdV92YXJpYW50
ID0gewo+ICAJLm51bV9jbG9ja3MgPSBBUlJBWV9TSVpFKHJvY2tjaGlwX3ZwdV9jbGtfbmFtZXMp
Cj4gIH07Cj4gIAo+ICsvKiBWRFBVMi9WRVBVMiAqLwo+ICsKPiAgY29uc3Qgc3RydWN0IGhhbnRy
b192YXJpYW50IHJrMzMyOF92cHVfdmFyaWFudCA9IHsKPiAgCS5kZWNfb2Zmc2V0ID0gMHg0MDAs
Cj4gIAkuZGVjX2ZtdHMgPSByazMzOTlfdnB1X2RlY19mbXRzLAo+ICAJLm51bV9kZWNfZm10cyA9
IEFSUkFZX1NJWkUocmszMzk5X3ZwdV9kZWNfZm10cyksCj4gLQkuY29kZWMgPSBIQU5UUk9fTVBF
RzJfREVDT0RFUiB8IEhBTlRST19WUDhfREVDT0RFUiwKPiArCS5jb2RlYyA9IEhBTlRST19NUEVH
Ml9ERUNPREVSIHwgSEFOVFJPX1ZQOF9ERUNPREVSIHwKPiArCQkgSEFOVFJPX0gyNjRfREVDT0RF
UiwKPiAgCS5jb2RlY19vcHMgPSByazMzOTlfdnB1X2NvZGVjX29wcywKPiAgCS5pcnFzID0gcm9j
a2NoaXBfdmRwdTJfaXJxcywKPiAgCS5udW1faXJxcyA9IEFSUkFZX1NJWkUocm9ja2NoaXBfdmRw
dTJfaXJxcyksCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
