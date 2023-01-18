Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9FA9C38147
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 21:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I62xAWjvFIics9isIJKRQn8rgmo6ItpcCopzPpKqM7c=; b=Yhqb9dnK+yExYL
	/Wi3GfUgQx2S3WvMCzdQavSOVVibVAoZm52d84RhD6YKP6+Yywz8rLTUrhF3kj/vJiVx/pOStWg5p
	5k67x7JhyHfnGuVnzdKRNxr2GOe9k4eSOcqErYAMPwJNi8OaKFvxFN00vqX1C7xnCZDRr/Mio8jKo
	vvKGgXz8TON6EAZWYVwR/v2uhXTnRqoI18o+SmgcCcflY8KcNBqRs8Pr/kV5rCQhzu+HNSxYlFjhu
	rqX9muyLngs5A9ZGW9G8nJjnzQnccpRhidc3XGT2zOWrSn3t5cFniurZEZe7Uvidb+IuLxA38MDKO
	8DQAKRUYIMFzHfVE92bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIFvV-002ilA-9j; Wed, 18 Jan 2023 21:24:57 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIFvS-002ikD-Co
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 21:24:55 +0000
Received: by mail-wm1-x336.google.com with SMTP id f19-20020a1c6a13000000b003db0ef4dedcso2303287wmc.4
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jan 2023 13:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DCqzYAGXvRtLAjxxpIF3ytH9cKaozsC7FyVAZziQiDo=;
        b=gfxbRG1yS40vpY4OIJpTCM55FK2tNlgVC3W4IiUqmcDXKHDbnfBMUjedMFCMH/ZmZm
         xVIZuPpExGHeQrAHweuH9rTmR8wUxB3itqMKziuxXoGXkvi2jMqPSeCMQg7bNPhCDWce
         6UFXL1IiuT0W64K9DoXmXC/1feGZ54IEKshK8tODRcK6CfwRt+kgoyB4a7GgVNx9YpF7
         yhEM8dgTL1DTteFh1g5IaB2xTwlFibaf3QyIMmgLvhoNoZVg6Mz8cKOF3myTRb1BBQdJ
         0iK/bjE1fCFVIWZEv3rRAW3PWAsO+E6aGaxeEun98X25tflOL2BAqAxW0XFOsUHC+VeE
         oLbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DCqzYAGXvRtLAjxxpIF3ytH9cKaozsC7FyVAZziQiDo=;
        b=vscHSvpGg0Wwhc/y7kk5iNcpOad0bUXQEQVd5a7FcUN1PMsk6TmUzKM0Q4P3xDzbN/
         a3uaEpOByPUsU1kmBWLXwHjKgvD2V6hBKQ4hE/PPi7K88hCwmVkthWivAG5d2hNDJesg
         rznj2QRRzgtxpyQDNUWHDTwWEEnmHqjmm37Nm7RzV+SZWyiepKpa47zq/HdWR2TnM+I7
         T8Ibd/JjD36t/zIKld68glFW+HW/iaZehexIlSMjPIbI+LYgc6fYBGK2duLnA2TfZPi0
         mGFeRaW6RwVI/ZXKr1is/m+fjciCK8gLWhYemlX0vOBrjPYpLE8/wzbJJDekUZ+2iKl5
         fBNg==
X-Gm-Message-State: AFqh2krh8irKA2C+UBEznPVtb00mT9It+VTi2BhU4MvyzePp/zWAqgny
	wWQTz+dCtK/QyCFe7v3uWzIcJw==
X-Google-Smtp-Source: AMrXdXvfYwcENXAPvZFHMl2qo8K6r2Sx9rcaaEI21AAl3zPp9Z0PAa1TFXYyvwNQO/hm+b5a6MHzvA==
X-Received: by 2002:a05:600c:1695:b0:3d3:4ae6:a71b with SMTP id k21-20020a05600c169500b003d34ae6a71bmr7849969wmn.2.1674077092997;
        Wed, 18 Jan 2023 13:24:52 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id v20-20020a05600c215400b003d358beab9dsm2910677wml.47.2023.01.18.13.24.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 13:24:52 -0800 (PST)
Message-ID: <42badcdd-771e-ac4f-77b3-8c40e12ebcc9@linaro.org>
Date: Wed, 18 Jan 2023 22:24:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_thermal/drivers/rockchip=3a_Use=c2=a0de?=
 =?UTF-8?Q?vm=5fplatform=5fget=5fand=5fioremap=5fresource=28=29?=
Content-Language: en-US
To: ye.xingchen@zte.com.cn
Cc: rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
 heiko@sntech.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <202301181639300333679@zte.com.cn>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <202301181639300333679@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_132454_455587_F3ED300B 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
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

T24gMTgvMDEvMjAyMyAwOTozOSwgeWUueGluZ2NoZW5AenRlLmNvbS5jbiB3cm90ZToKPiBGcm9t
OiB5ZSB4aW5nY2hlbiA8eWUueGluZ2NoZW5AenRlLmNvbS5jbj4KPiAKPiBDb252ZXJ0IHBsYXRm
b3JtX2dldF9yZXNvdXJjZSgpLCBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoKSB0byBhIHNpbmdsZQo+
IGNhbGwgdG8gZGV2bV9wbGF0Zm9ybV9nZXRfYW5kX2lvcmVtYXBfcmVzb3VyY2UoKSwgYXMgdGhp
cyBpcyBleGFjdGx5Cj4gd2hhdCB0aGlzIGZ1bmN0aW9uIGRvZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogeWUgeGluZ2NoZW4gPHllLnhpbmdjaGVuQHp0ZS5jb20uY24+Cj4gLS0tCj4gICBkcml2ZXJz
L3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jIHwgNCArLS0tCgpBcHBsaWVkLCB0aGFua3MKCi0t
IAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29m
dHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2su
Y29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFy
b29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9n
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
