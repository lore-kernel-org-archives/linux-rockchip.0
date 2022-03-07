Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50504C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 19:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQ/TUMoD7NoDWIS63Wf3FgXMiStc3I1C3HSA5o0v1Us=; b=c9IPh/4MNShVNc
	j+IWsKKFy3hcvOwRp9FW3jaIhn088hrC9r4rkHPsD7Yy0RdzcgV6zo0eKkj0r2WEQzIKv/ighTGCL
	yP00gqksh/DReMgVyVCeQ9/K6Mjs/5Nkl9R8/Qa+LZlRIy3BbaudLZfP9WGcxjdyHb2u1w0NjIoPV
	NtOAvY69++UgKELlOL+K+U89XbtHmzTa7t4N+abp4NssX/En2gWbR6l+kMWQMOqPMKKdt88kVbSRw
	18xffIYygwBxvHAfHTGYIlIK2LqEDqMGqtKtccd5r/rmMME/lXHMNloPikCcjpp2Fx4GTk4seiNhl
	enYJdLrkaysJtY7+JfIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRIpX-001LVd-48; Mon, 07 Mar 2022 19:15:39 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRIpV-001LUY-1N
 for linux-rockchip@lists.infradead.org; Mon, 07 Mar 2022 19:15:38 +0000
Received: by mail-qv1-xf35.google.com with SMTP id f4so12482583qvd.0
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 11:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=/T06aUbPfselr2n9TidREgOZVwSFDIvHWwBUr3oboEY=;
 b=0fW5OJ6uXE0+94/55NGIEmnq+6afVcsDLJcD4bhRA6plcBlDqgEo7x8BF4GAcQJWOh
 7PCJaLW3V3APTBN8pFeIrn3JmBXkgtJS24zRzFV2bMU9CS1GiGBZVHbkuIWFCJSorQ1T
 AyhT8RGCVsELcXtpzQkUoVO4USZ3fnoGj1x8xa8dl1TlX9VZ838bz22ddMpTZ8p0Xjks
 M6TOpCzCDNj62s6O2EsIZnXMYApXsIuL4lzyQFGsAtS5Noo80dJcZtJr5ab7MaCCxRP2
 VWVrgmCM9JW4yXnjkUEbX+lVc9+sc7UHRadF3PL9eqWUv6HtTyaNvtj4okktk3te2NJ6
 fUUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=/T06aUbPfselr2n9TidREgOZVwSFDIvHWwBUr3oboEY=;
 b=SgRfh4Xs9Gls8NwjIDc68WDA+SWt9GJErFJDL+t7TlWY+u+O1BpuqXvJhaGyTCDwRd
 CAEh3uIXD9L5rzfzVl+IKCpzSB2Uc9vQJwtFqd2W9KqlKrUCUynxBtRqDY9hB5qRd0SW
 v0BCTNDNt7y+ruqdf9B5Ykvp7ufEUVlS/8n4v3W/tfen4aS6+apPW4dutdZKhZBb2y++
 rsWQMMb/OgbtN1aHGgADSbrsHpEWdRlsXNrphhtlx6dcMFYsT7xDNUksIPVyKC58Lwxd
 Sxz41/vqg24vescQEmwvungZ3IwIi1PQWR6AHNZuiJ9lvQDtUqAPSwMbdg/Y2+wum24L
 s32g==
X-Gm-Message-State: AOAM531f1tsQQSCPoy8cgUcFRX1aXhIj+nbts4XOWbwiLjV+tNiCJR1z
 9xlrp89XG9r6fmHEIUpXlJWBqu1wXCXE1g==
X-Google-Smtp-Source: ABdhPJxAVg/j3lDy7bc75kjBmzKmDN0hepKqllxf/hSt06pbVJQG70GO1a73cXthkmhH0nvdgcBqwA==
X-Received: by 2002:a05:6214:212f:b0:42f:e1c1:9f00 with SMTP id
 r15-20020a056214212f00b0042fe1c19f00mr9724294qvc.79.1646680534557; 
 Mon, 07 Mar 2022 11:15:34 -0800 (PST)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168]) by smtp.gmail.com with ESMTPSA id
 q8-20020a05622a04c800b002e06d7c1eabsm797470qtx.16.2022.03.07.11.15.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 11:15:34 -0800 (PST)
Message-ID: <4f76307485579893114ae4fb9e07cdeb83fd9383.camel@ndufresne.ca>
Subject: Re: [PATCH v2 01/17] media: rkisp1: capture: Initialize entity
 before video device
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>, 
 linux-rockchip@lists.infradead.org
Date: Mon, 07 Mar 2022 14:15:32 -0500
In-Reply-To: <20220304171925.1592-2-laurent.pinchart@ideasonboard.com>
References: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
 <20220304171925.1592-2-laurent.pinchart@ideasonboard.com>
User-Agent: Evolution 3.42.3 (3.42.3-1.fc35) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_111537_104966_07350408 
X-CRM114-Status: GOOD (  17.10  )
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

SGkgTGF1cmVudCwKCkxlIHZlbmRyZWRpIDA0IG1hcnMgMjAyMiDDoCAxOToxOSArMDIwMCwgTGF1
cmVudCBQaW5jaGFydCBhIMOpY3JpdMKgOgo+IFRoZSBtZWRpYV9lbnRpdHkgZW1iZWRkZWQgaW4g
dGhlIHZpZGVvX2RldmljZSBuZWVkcyB0byBiZSBpbml0aWFsaXplZAo+IGJlZm9yZSByZWdpc3Rl
cmluZyB0aGUgdmlkZW9fZGV2aWNlLiBEbyBzby4KCldlJ3ZlIHNlZW4gdGhlIHNhbWUgYnVnIGlu
IE1USyB2Y29kZWMgdG9wb2xvZ3kuIEFueSBpZGVhIGlmIHRoYXQgY291bGQgYmUgY2F0Y2gKdGhp
cyBhdCBsb3dlciBsZXZlbCB0byBwcmV2ZW50IGludmFsaWQgcGF0aCBiZWluZyBwb3B1bGF0ZWQg
aW4gdGhlIG1lZGlhCmNvbnRyb2xsZXIgb3ZlciBhbmQgb3ZlciA/Cgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4K
PiBSZXZpZXdlZC1ieTogRGFmbmEgSGlyc2NoZmVsZCA8ZGFmbmFAZmFzdG1haWwuY29tPgo+IC0t
LQo+ICAuLi4vcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMgICB8IDE3
ICsrKysrKysrKystLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA3
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Jv
Y2tjaGlwL3JraXNwMS9ya2lzcDEtY2FwdHVyZS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1cmUuYwo+IGluZGV4IGM5NWMwMGE5MTE4MC4uOWMx
MWYyYjhlNWY1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmtpc3AxL3JraXNwMS1jYXB0dXJlLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Jv
Y2tjaGlwL3JraXNwMS9ya2lzcDEtY2FwdHVyZS5jCj4gQEAgLTEzNzIsMjIgKzEzNzIsMjUgQEAg
c3RhdGljIGludCBya2lzcDFfcmVnaXN0ZXJfY2FwdHVyZShzdHJ1Y3Qgcmtpc3AxX2NhcHR1cmUg
KmNhcCkKPiAgCj4gIAl2ZGV2LT5xdWV1ZSA9IHE7Cj4gIAo+ICsJcmV0ID0gbWVkaWFfZW50aXR5
X3BhZHNfaW5pdCgmdmRldi0+ZW50aXR5LCAxLCAmbm9kZS0+cGFkKTsKPiArCWlmIChyZXQpCj4g
KwkJcmV0dXJuIHJldDsKPiArCj4gIAlyZXQgPSB2aWRlb19yZWdpc3Rlcl9kZXZpY2UodmRldiwg
VkZMX1RZUEVfVklERU8sIC0xKTsKPiAgCWlmIChyZXQpIHsKPiAgCQlkZXZfZXJyKGNhcC0+cmtp
c3AxLT5kZXYsCj4gIAkJCSJmYWlsZWQgdG8gcmVnaXN0ZXIgJXMsIHJldD0lZFxuIiwgdmRldi0+
bmFtZSwgcmV0KTsKPiAtCQlyZXR1cm4gcmV0Owo+ICsJCWdvdG8gZXJyb3I7Cj4gIAl9Cj4gKwo+
ICAJdjRsMl9pbmZvKHY0bDJfZGV2LCAicmVnaXN0ZXJlZCAlcyBhcyAvZGV2L3ZpZGVvJWRcbiIs
IHZkZXYtPm5hbWUsCj4gIAkJICB2ZGV2LT5udW0pOwo+ICAKPiAtCXJldCA9IG1lZGlhX2VudGl0
eV9wYWRzX2luaXQoJnZkZXYtPmVudGl0eSwgMSwgJm5vZGUtPnBhZCk7Cj4gLQlpZiAocmV0KSB7
Cj4gLQkJdmlkZW9fdW5yZWdpc3Rlcl9kZXZpY2UodmRldik7Cj4gLQkJcmV0dXJuIHJldDsKPiAt
CX0KPiAtCj4gIAlyZXR1cm4gMDsKPiArCj4gK2Vycm9yOgo+ICsJbWVkaWFfZW50aXR5X2NsZWFu
dXAoJnZkZXYtPmVudGl0eSk7Cj4gKwlyZXR1cm4gcmV0Owo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9p
ZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
