Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C642BC25B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 16:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMnVgGhLUresQGmbZMnad8mBTsdqGDKh8Ix/bIJc2uE=; b=zbqQ5CDTwrzjq2
	UkrhasbYGOIeLTnnT5t5HeHwZZhMVL6iQbBd3euZTIxfDeiCH/Chgh+LqDN4s1h/U5SrEt2u9XOiS
	+9+cOX7aF9KAYjayabjLhadtdsjHQMrDUdUPfavL0GW0uXvHZuy7QYOTkXg0UgLl/8U48E0JbcsNE
	dOVkf6NtmAik/4Ok5AWO3Hvt7DoEEHY2bloTeGtfAo+zyuMt6plqrteSRbLF5FrQPqWP7VePE+aVU
	tosZOF3TUVfml8+L/J0O99H+DJuyUhKucLz7yA2etC7Exg2vtP1X8MRm9PsSBulX4DXph0tHqIXLc
	h9th5nIVrq4U9c78yYvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD50Q-0000000Aoyp-0wfg;
	Fri, 31 May 2024 16:21:26 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD50N-0000000Aoxk-10j9
	for linux-rockchip@lists.infradead.org;
	Fri, 31 May 2024 16:21:24 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-6aedd5167d1so3173176d6.1
        for <linux-rockchip@lists.infradead.org>; Fri, 31 May 2024 09:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717172477; x=1717777277; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=siXueITpdXmllfrhOnciz2l6HSxbQMeuCE6GtcEy6a8=;
        b=F/Aowt5iwx38ctnLA+kvNGt5/u/JZoMlVLQGNm3swOkcFtLk3oPKmYXV2DmLGTvPTc
         IfPg3gzrSu10/JsrWbSeRlqbi5xE2kz/V6eoMJ6aPcLlsMSk8CquS/7l1OaMDLU93jip
         W/0MZLeq2n59CU/hmqBfuWm95GixD/QfL29qM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717172477; x=1717777277;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=siXueITpdXmllfrhOnciz2l6HSxbQMeuCE6GtcEy6a8=;
        b=aVb1b9oz8r49Aagf99e0yB9mCKOtoL4VY/ewX407PImImpUGjH1+1wui9UhgO9D1LY
         LwBJ47bX1+UiOH1YROpqm4FIT1K9DUsLiI6I4eAKLmksRYUBUHfhY3/EaJdYKc7oYW9v
         eQ6Tyzd7PXQ5+3VF3Tp0LtGpiAwRDdoLVlwO7oXuOg/j/26jnff7rj5Ul9woiQYwlO85
         35RoOwjMvvHdg+vmbltE2pRebZfLcrJ9ZwbgGJV4ig+4gEejSpZO6wBgjNBvxE6FDK+1
         X2h23jdZws4MQeDLuO07dFvAlO1oivOOgxogvKF8B/WNX6u4ycuni4rw+fF/3SkAGY/p
         vNZw==
X-Forwarded-Encrypted: i=1; AJvYcCVb+aKgfbeK1/zcEzXBWwVfJ6mLGk1qtRDippqNPk49l8nwGUJRrU/q41//W/ErrSZyZKr2pKONpdLakagGqFn7f0Qu9DALsYxjshrYC/5jIlQ2
X-Gm-Message-State: AOJu0Yz6zWAMhhUR1/zJFiXhbWA8Ay8wyJTWU+fQhgJjXvQgHC5GR7DH
	iXd6u71hMYU6Q/lC1o8WG5uNDXnRfp9AMvtwKYW2KSmw/fVQuu4L2mE7A/L2IKnO58bep4ibqkR
	YgI2J
X-Google-Smtp-Source: AGHT+IFMUzwZttGR9zaCkVXfUK5Byjrij3h/dfHt2Q2sX0fA8rMFoko15hK8qTlJLklvWOwwidmaCw==
X-Received: by 2002:a05:6214:494a:b0:6ae:3c77:10cf with SMTP id 6a1803df08f44-6aecd6e32f9mr23387086d6.61.1717172476697;
        Fri, 31 May 2024 09:21:16 -0700 (PDT)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com. [209.85.160.177])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ae4b40650csm7576206d6.76.2024.05.31.09.21.15
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 May 2024 09:21:16 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-43f87dd6866so435721cf.0
        for <linux-rockchip@lists.infradead.org>; Fri, 31 May 2024 09:21:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUp91umSKXgZNkJwKu/2k58sbmCCA7mzwk4TJoFnHjbbBgPmcWhSILhi3aQAHQJwnaFaRqqINsVbbBBXlFqd4VaYjWv6eFXlE30p8bF1gK15xeD
X-Received: by 2002:a05:622a:4a14:b0:43f:b19e:d3ba with SMTP id
 d75a77b69052e-43ff2c5399bmr3052241cf.8.1717172475232; Fri, 31 May 2024
 09:21:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org> <7428a2f7-befc-6db8-76f4-3ca8dc12d31c@quicinc.com>
In-Reply-To: <7428a2f7-befc-6db8-76f4-3ca8dc12d31c@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 31 May 2024 09:20:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xcq-p5OxSnDJVF-Wp88ZfXOaOKJmh941ymy-f0wkhdhw@mail.gmail.com>
Message-ID: <CAD=FV=Xcq-p5OxSnDJVF-Wp88ZfXOaOKJmh941ymy-f0wkhdhw@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] drm/panel-edp: remove several legacy compatibles
 used by the driver
To: Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_092123_323672_37B48CC6 
X-CRM114-Status: GOOD (  24.19  )
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

SGksCgpPbiBGcmksIE1heSAzMSwgMjAyNCBhdCA5OjE44oCvQU0gSmVmZnJleSBIdWdvIDxxdWlj
X2podWdvQHF1aWNpbmMuY29tPiB3cm90ZToKPgo+IE9uIDUvMzAvMjAyNCA1OjEyIFBNLCBEbWl0
cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gVGhlcmUgYXJlIHR3byB3YXlzIHRvIGRlc2NyaWJlIGFu
IGVEUCBwYW5lbCBpbiBkZXZpY2UgdHJlZS4gVGhlCj4gPiByZWNvbW1lbmRlZCB3YXkgaXMgdG8g
YWRkIGEgZGV2aWNlIG9uIHRoZSBBVVggYnVzLCBpZGVhbGx5IHVzaW5nIHRoZQo+ID4gZWRwLXBh
bmVsIGNvbXBhdGlibGUuIFRoZSBsZWdhY3kgd2F5IGlzIHRvIGRlZmluZSBhIHRvcC1sZXZlbCBw
bGF0Zm9ybQo+ID4gZGV2aWNlIGZvciB0aGUgcGFuZWwuCj4gPgo+ID4gRG9jdW1lbnQgdGhhdCBh
ZGRpbmcgc3VwcG9ydCBmb3IgZURQIHBhbmVscyBpbiBhIGxlZ2FjeSB3YXkgaXMgc3Ryb25nbHkK
PiA+IGRpc2NvdXJhZ2VkIChpZiBub3QgZm9yYmlkZGVuIGF0IGFsbCkuCj4gPgo+ID4gV2hpbGUg
d2UgYXJlIGF0IGl0LCBhbHNvIGRyb3AgbGVnYWN5IGNvbXBhdGlibGUgc3RyaW5ncyBhbmQgYmlu
ZGluZ3MgZm9yCj4gPiBmaXZlIHBhbmVscy4gVGhlc2UgY29tcGF0aWJsZSBzdHJpbmdzIHdlcmUg
bmV2ZXIgdXNlZCBieSBhIERUIGZpbGUKPiA+IHByZXNlbnQgaW4gTGludXgga2VybmVsIGFuZCBt
b3N0IGxpa2VseSB3ZXJlIG5ldmVyIHVzZWQgd2l0aCB0aGUKPiA+IHVwc3RyZWFtIExpbnV4IGtl
cm5lbC4KPiA+Cj4gPiBUaGUgZm9sbG93aW5nIGNvbXBhdGlibGVzIHdlcmUgbmV2ZXIgdXNlZCBi
eSB0aGUgZGV2aWNlcyBzdXBwb3J0ZWQgYnkKPiA+IHRoZSB1cHN0cmVhbSBrZXJuZWwgYW5kIGFy
ZSBhIHN1YmplY3QgdG8gcG9zc2libGUgcmVtb3ZhbDoKPiA+Cj4gPiAtIGxnLGxwMDk3cXgxLXNw
YTEKPiA+IC0gc2Ftc3VuZyxsc24xMjJkbDAxLWMwMQo+ID4gLSBzaGFycCxsZC1kNTExNnowMWIK
Pgo+IE9rIHRvIGRyb3AgdGhlIHNoYXJwIG9uZSBJIGFkZGVkLiAgSXQgc2hvdWxkIGJlIGFibGUg
dG8gYmUgaGFuZGxlZCBieQo+IHRoZSAobmV3aXNoKSBlZHAtcGFuZWwsIGJ1dCBJIHRoaW5rIHRo
ZSBUSSBicmlkZ2UgZHJpdmVyIG5lZWRzIHNvbWUgd29yawo+IGZvciB0aGUgc3BlY2lmaWMgcGxh
dGZvcm0gKG5vIEkyQyBjb25uZWN0aW9uKSB0byB2ZXJpZnkuCgpJcyB0aGUgcGxhdGZvcm0gc3Vw
cG9ydGVkIHVwc3RyZWFtPyBJZiBzbywgd2hpY2ggcGxhdGZvcm0gaXMgaXQ/IElzCnRoZSBUSSBi
cmlkZ2UgY2hpcCB0aGUgdGktc242NWRzaTg2PyBJZiBzbywgSSdtIGNvbmZ1c2VkIGhvdyB5b3Ug
Y291bGQKdXNlIHRoYXQgYnJpZGdlIGNoaXAgd2l0aG91dCBhbiBpMmMgY29ubmVjdGlvbiwgYnV0
IHBlcmhhcHMgSSdtCm1pc3VuZGVyc3RhbmRpbmcuIDotUAoKVGhhbmtzIQoKLURvdWcKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
