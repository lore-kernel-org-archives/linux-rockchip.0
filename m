Return-Path: <SRS0=P1+Z=B2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0280C433DF
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2020 19:23:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BCE162067C
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2020 19:23:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="23xcscmE";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wy7jjy9G"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BCE162067C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2YTSHCREagAhRVanqmf2A7/Gm/gMMa1Fg29z3K3VxhI=; b=23xcscmEgI/V8rKqfT6Qb1Lfb
	PdoH3unFWz0kYCrCQFmt41WXEUwomb4DIzqkDnhlkfaIOzac/NE1q08SoG/xObtvRHW4fmM8A+Mpb
	dJYSqPYWomehGtidJ5zcgchwqGymNnvYFgfjkVEGQl3ds6IRMAjJlD2awdJSmQIKTMMiu8ugDzm4p
	LPnG8d7U+PkfXETVxKz2wwkjj9KOGxtUoT7+cZ05P58GYaQWPVM1qufss8/2UUa4pJ1o9AcI1m2Yw
	ZY2lf9wAtOMjOaQFnqvl1H5xOtJdlU692hqoyOCjhB+l9Pvb820Dwf20WPN1djzh0ySo9eBftD3DM
	9N2t2PjUg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7OFu-0000jf-2u; Sun, 16 Aug 2020 19:23:46 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7OFr-0000j2-3u; Sun, 16 Aug 2020 19:23:44 +0000
Received: by mail-ed1-x544.google.com with SMTP id df16so10636129edb.9;
 Sun, 16 Aug 2020 12:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OI2ilMyT/T1bEBIiLjqqyPUgBfPn1XCfDm/gphRm5kg=;
 b=Wy7jjy9Gv9ZxM3v3dIC72o7hwek0w6VthWQA6+9Rhgr0UP6FbU6fRqt+unlz20F1Nl
 ntLm4n3zhGJiyeQUS3OwrfN1eE5QJc/oJibwlek9/ZJrbfCv3rS7C1TyWoAC68wixtV+
 2mO+VM2PXpe6Kx/PTnqvaw+Pi88NIAaopHQyUJQddN7fpxtPJyRUdOewpr1I8CTJXMX9
 2Uj4Y3RpPkGK9QLSSTdWxSEGxqeW1Q95YbYYb1grTJG5NHI2253mPW5qIt+8jCrb+20V
 vVp+/XNv+AfhZYgzTP+7yu2X6476i5Fj1qbCdA+FtmONj2OllsNzBIyaW9fzeSuQdt7I
 lVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OI2ilMyT/T1bEBIiLjqqyPUgBfPn1XCfDm/gphRm5kg=;
 b=lKF2AeVw8blP9H4V0Nh41gIvDw1hMKj44pZB1ncPfZGBzeaGZUzkwKCGbLyINGEFwP
 StgM/QO2FysjHEiV3Saq7+w8B+Qe8ePBmt5O1UEuQ8CHrTXwHKq3OhpAJ5gCRRpTCihg
 t+tJSv9WRvFz3DY858nR5BcPe3EniBVlB7of8OlX2Hsu0lQTJWaMWJCyWjDu+vMyg9/v
 3LbavbAqnESphASmF5+tWHOwuAfMvICWB1DRDx2D68R3tA6hFwn7rvBv8247sxYvO9WR
 IxtMaKvsLhp00NqGoN3qTc2CKDzjnny1cM1n9xpLDemr98hamInduWuPaF5QtNa13SCM
 auaQ==
X-Gm-Message-State: AOAM5325+xc8Tx1ZfDmDEqT9u2ybhT4I27zWx2DHixdD8ov95iT4KH7P
 SnLtX35EP3rAfbTAckeUmRLY+bPihIU=
X-Google-Smtp-Source: ABdhPJxKWoES0hitdZBraV7D3zk3EQ6vqSWM5VgAcaUp0prurr7PKW8o5uA2fGbnR0sfGdHRProVYw==
X-Received: by 2002:a05:6402:7d5:: with SMTP id
 u21mr12493663edy.341.1597605819001; 
 Sun, 16 Aug 2020 12:23:39 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 dr21sm13649255ejc.112.2020.08.16.12.23.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Aug 2020 12:23:38 -0700 (PDT)
Subject: Re: [PATCH 1/3] usb: dwc3: of-simple: Add compatible for rk3328
To: Cameron Nemo <cnemo@tutanota.com>, Devicetree <devicetree@vger.kernel.org>,
 Linux Arm Kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <MEsGWB_--3-2@tutanota.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <4482f04a-d75d-6ede-acae-eb3fc7364130@gmail.com>
Date: Sun, 16 Aug 2020 21:23:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <MEsGWB_--3-2@tutanota.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200816_152343_264300_74E0C064 
X-CRM114-Status: GOOD (  21.99  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: balbi@kernel.org, robh+dt@kernel.org, Heiko <heiko@sntech.de>,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQ2FtZXJvbiwKClVzZSBwbGFpbiB0ZXh0IG1vZGUgZm9yIHBhdGNoZXMuCgpCZWZvcmUgeW91
IGludHJvZHVjZSBhIG5ldyBjb21wYXRpYmxlIHN0cmluZywgeW91ciBwYXRjaCBzZXJpZSBtdXN0
CmNoYW5nZSB0aGUgZG9jdW1lbnRzIGZpcnN0IGluIHZlcnNpb24gMi4KU2VlOgoKZHdjMy50eHQK
cm9ja2NoaXAsZHdjMy50eHQKCihUT0RPIGJ1dCBub3Qgbm93KSBCb3RoIGRvY3VtZW50cyBhcmUg
aW4gbmVlZCBmb3IgYSBjb252ZXJzaW9uIHRvIHlhbWwuCgpBbHNvIHNvcnQgbm9kZXMgd2l0aG91
dCByZWcgYWxwaGFiZXRpY2FsbHkgaW4gcmszMzI4LXJvY2s2NC5kdHMuCgomdTJwaHkge30KJnVh
cnQyIHt9CiZ1c2IyMF9vdGcge30KJnVzYmRyZDMge30KJnVzYmRyZF9kd2MzIHt9CiZ1c2JfaG9z
dDBfZWhjaSB7fQomdXNiX2hvc3QwX29oY2kge30KCk9uIDgvMTYvMjAgNzoxNiBQTSwgQ2FtZXJv
biBOZW1vIHdyb3RlOgo+IEFkZCBhIGNvbXBhdGlibGUgdG8gYmUgaG9va2VkIGludG8gYnkgdGhl
IFJvY2tjaGlwIHJrMzMyOCBkZXZpY2UgdHJlZS4KPiAKPiBUaGUgcmszMzk5IGNvbXBhdGlibGUg
Y2Fubm90IGJlIHJldXNlZCBiZWNhdXNlIHRoZSByazMzMjggU29DcyBtYXkKPiByZXF1aXJlIGEg
c3BlY2lhbGl6ZWQgZHJpdmVyIGluIHRoZSBmdXR1cmUsIGFuZCBvbGQgZGV2aWNlIHRyZWVzIG11
c3QKPiByZW1haW4gY29tbXBhdGlibGUgd2l0aCBuZXdlciBrZXJuZWxzLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IENhbWVyb24gTmVtbyA8Y25lbW9AdHV0YW5vdGEuY29tPgo+IC0tLQo+IGRyaXZlcnMv
dXNiL2R3YzMvZHdjMy1vZi1zaW1wbGUuYyB8IDQgKysrLQo+IDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2Iv
ZHdjMy9kd2MzLW9mLXNpbXBsZS5jIGIvZHJpdmVycy91c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5j
Cj4gaW5kZXggN2RmMTE1MDEyOTM1Li41NGYzOGU0MzQwMjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy91c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jCj4gKysrIGIvZHJpdmVycy91c2IvZHdjMy9kd2Mz
LW9mLXNpbXBsZS5jCj4gQEAgLTQ5LDcgKzQ5LDggQEAgc3RhdGljIGludCBkd2MzX29mX3NpbXBs
ZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICogU29tZSBjb250cm9sbGVy
cyBuZWVkIHRvIHRvZ2dsZSB0aGUgdXNiMy1vdGcgcmVzZXQgYmVmb3JlIHRyeWluZyB0bwo+ICog
aW5pdGlhbGl6ZSB0aGUgUEhZLCBvdGhlcndpc2UgdGhlIFBIWSB0aW1lcyBvdXQuCj4gKi8KPiAt
CWlmIChvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShucCwgInJvY2tjaGlwLHJrMzM5OS1kd2MzIikp
Cgo+ICsJaWYgKG9mX2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAicm9ja2NoaXAscmszMzk5LWR3
YzMiKSB8fAo+ICsJwqDCoMKgIG9mX2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAicm9ja2NoaXAs
cmszMzI4LWR3YzMiKSkKCnNvcnQgYWxwaGFiZXRpY2FsbHkuCgo+IHNpbXBsZS0+bmVlZF9yZXNl
dCA9IHRydWU7Cj4gCj4gc2ltcGxlLT5yZXNldHMgPSBvZl9yZXNldF9jb250cm9sX2FycmF5X2dl
dChucCwgZmFsc2UsIHRydWUsCj4gQEAgLTE3MSw2ICsxNzIsNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRldl9wbV9vcHMgZHdjM19vZl9zaW1wbGVfZGV2X3BtX29wcyA9IHsKPiB9Owo+IAo+IHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG9mX2R3YzNfc2ltcGxlX21hdGNoW10gPSB7
Cj4gKwl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzMyOC1kd2MzIiB9LAo+IHsgLmNvbXBh
dGlibGUgPSAicm9ja2NoaXAscmszMzk5LWR3YzMiIH0sCj4geyAuY29tcGF0aWJsZSA9ICJ4bG54
LHp5bnFtcC1kd2MzIiB9LAo+IHsgLmNvbXBhdGlibGUgPSAiY2F2aXVtLG9jdGVvbi03MTMwLXVz
Yi11Y3RsIiB9LAo+IC0tCj4gMi4yOC4wCj4gCj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
