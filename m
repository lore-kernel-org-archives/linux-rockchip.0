Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C325C54E71
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:To:From:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ch8o7g8uYhaXiFnR9/0NU7tGBxhwvyVcA4YucXyOhlA=; b=EPFu76pAdKZiU4
	I4rnuhXTxE34lxfLTYxVrl9JzvthJo6J4xnCTVHmuW7z0bM+lIVSQwVpVmchojj2qbw0JyTmCajsr
	y0k1hxt2bTo2afGVFXOdUMhZai5x9XBAX78bUmffr/FN8En445wIY385IH+TbckjHlPWtuemK6SIM
	NaBJLBKJyxYEefWukGQvOq3syO8WAQbNxIQe+huMOKz1NcaUgSb1b0Kps7wuCstZsRAQX31h3VtqP
	XHvfbpCGrt3KTF/QHDW3mhWhCdiGzkJgQjA4bO1O1HGeATgaCW/AzEbRKbRbj31hBfrvI8BzQjGpc
	n3G1GHtULO2OCdNq+4/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHUZD-0000000EBVa-3roQ;
	Tue, 20 May 2025 21:32:07 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHUZA-0000000EBVD-3dMh
	for linux-rockchip@lists.infradead.org;
	Tue, 20 May 2025 21:32:06 +0000
Received: by mail-pj1-x1044.google.com with SMTP id 98e67ed59e1d1-30e8daea8c6so3705826a91.0
        for <linux-rockchip@lists.infradead.org>; Tue, 20 May 2025 14:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=immigrans.co.uk; s=googles; t=1747776723; x=1748381523; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:subject:to:from
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WtMEvX//tejaY73dWSTpIMpQHk4pp+hJXIleve2QbRM=;
        b=RjbBNgaU/8XBSAFRUB+mCgV0ufm2i5aFYihnqqO0grzAP+RW+myV4UPrGZFYJGLRf3
         al/KYtYKZ3TsrEJZrhI+1Z48p6bTlZJyerHz3ZMdVmx65om5q+UO7Hvy2yrzIa36rm2p
         wioDQ/3/tl4vzDb/lUSTlTPIe3tDJp5AsJamfins5cYIxzqQS7a+ya5UDqjltg/lwqfK
         xxtUEdRa0cbQoeWecuOrtnQWLJB4MdJC9VUNi6wdzl8u8+rrNx3aU2OmwgWB9oNibv8I
         pvkjgYmc0KNUbeAYwp7Wa5YUjZLcjWizSIY7MqOEakiDcRk9uEob7cDi0tgvUld7+W5y
         xQkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747776723; x=1748381523;
        h=content-transfer-encoding:mime-version:date:subject:to:from
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WtMEvX//tejaY73dWSTpIMpQHk4pp+hJXIleve2QbRM=;
        b=J0HFjdkf0DlrRFejCVL3/n911vDA85fhOGWNcWZcqkcq+JgTt8HgBG8m/O7N+5pXKP
         VsXakOemQjgVj0AoeSEEvPevZUf5IK/iosved0AhV/uex84dGYsFY4njINd84UeJkTE0
         yuxm1tU4mIVP4M/5Yp0ZL6CVR9DgjsU+uqMHuskqOmVnHqRi8P8mXMiqoMKvsRfMWh+3
         hQGYt4UDBZq+CuFQB9mJxuzjmFhLZip/MUftqB0pdrwnsGN7MmjZh+xMX5HBN9RXoTEa
         weiDfP2cfzetGPoWX1cTuT7/aE223dnyzhyeJoEbNWxt1AD9EWMsVFohX5UG9HlJvQch
         DDeg==
X-Gm-Message-State: AOJu0Yw8D8zVch/EiQc/s1eAu/7FO281dXgLocHZanzUEaqQvjWbckzq
	uco6eLu38CrzXc1pbmv91Q2LNzsz+qYk9CYup07/7jbWsJQ8Xga1C6MotfUaHIL/dHCahHrbZPw
	jefzHcuLyEQ==
X-Gm-Gg: ASbGncvLohWDIrf7GvUDKTbCBSxAG0zjeEryveWQTn8Tzqm3wHWs2ZVXv33/Mvvzr0b
	8W9fDL17tj2J6J9LddR37RGFah/hi8XFNZwlPw8uqJHsl86N+lSCbPB4JRmautjcNd12bSzwlRa
	cu+x3EseCv59rsohPCGH1UJZohCVL+PdBkocw+9V7tTcEEsGtBHqp3pphpt1rASibyPqpl3JaxI
	DT3lFMNlx7IgnTxcXbPLFF0L0/odlL8hu90l/sjAFt7llS+HYhtyU0PPsob0Mze1b1Bem83JnHd
	sm/L2Zmqi6BSmrPsFkS+gQN//1bK0wZ2/jBN6FLMOkakf9xunEvYdVgRRoxHKVqpPPs90Wfid9b
	kCm3h1kaYkKm9+9lF0w==
X-Google-Smtp-Source: AGHT+IErA40lu0RCsdzffE3EzcLwtrQT67mWGpBSw69SzgSWgtXjs1o85gJcPKKHiHVAKM5OAlq8jg==
X-Received: by 2002:a17:90a:d445:b0:30e:a1ec:68dd with SMTP id 98e67ed59e1d1-30ea1ec68e8mr23364821a91.8.1747776722985;
        Tue, 20 May 2025 14:32:02 -0700 (PDT)
Received: from ygflj.ca (syn-023-242-246-246.res.spectrum.com. [23.242.246.246])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30f36385b68sm2214951a91.11.2025.05.20.14.32.02
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 May 2025 14:32:02 -0700 (PDT)
Message-ID: <9e9406047434e9fee17439d70fb9b4ee@immigrans.co.uk>
From: =?utf-8?B?6Ieq5YuV6YCa55+l?= <noreply64@immigrans.co.uk>
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: =?utf-8?B?44CQU0JJ6Ki85Yi444CR5Y+j5bqn5L+d6K2344Gu44Gf44KB?=
	=?utf-8?B?44Gu6Kit5a6a5pu05paw5L6d6aC8?=
Date: Wed, 21 May 2025 05:32:00 +0800
X-Priority: 3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_143204_908356_5933C971 
X-CRM114-Status: UNSURE (   2.32  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

5bmz57Sg44KI44KKU0JJ6Ki85Yi444KS44GU5Yip55So44GE44Gf44Gg44GN44CB6Kqg44Gr44GC
44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCCgrjgZPjga7jgZ/jgbPjgIHjgYrlrqLmp5jj
gavjgojjgorlronlhajjgavjgrXjg7zjg5PjgrnjgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY/jgZ/j
goHjgIHjgrvjgq3jg6Xjg6rjg4bjgqPoqK3lrprjgpLlvLfljJbjgYTjgZ/jgZfjgb7jgZfjgZ/j
gIIK44GK5omL5pWw44KS44GK44GL44GR44GE44Gf44GX44G+44GZ44GM44CB5LiL6KiY44Oq44Oz
44Kv44KI44KKMjAyNeW5tDXmnIgyM+aXpeOBvuOBp+OBq+ioreWumuOBruabtOaWsOOCkuOBiumh
mOOBhOOBhOOBn+OBl+OBvuOBmeOAggoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CuKWoCDoqK3lrprmm7TmlrDmnJ/pmZDvvJoyMDI15bm0NeaciDIz5pelCuKWoCDmm7TmlrDjg5rj
g7zjgrjvvJpodHRwczovL3NibC1hdXJjaGVydS5jb20KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCgrjgarjgYrjgIHmnJ/ml6Xjgb7jgafjgavmm7TmlrDjgYzlrozkuobjgZfjgarj
gYTloLTlkIjjgIHmqZ/og73jga7jgZTliKnnlKjjgpLliLbpmZDjgZXjgZvjgabjgYTjgZ/jgaDj
gY/jgZPjgajjgYzjgZTjgZbjgYTjgb7jgZnjgILjgYLjgonjgYvjgZjjgoHjgZTkuobmib/jgY/j
gaDjgZXjgYTjgIIKCuOBlOS4jeaYjuOBqueCueOBr+OAgeS4i+iomOOBvuOBp+OBiuWVj+OBhOWQ
iOOCj+OBm+OBj+OBoOOBleOBhOOAgiAgClNCSeiovOWIuCDjgqvjgrnjgr/jg57jg7zjgrvjg7Pj
gr/jg7wgIAowMTIwLTEwNC0yNTDvvIjlubPml6UgOTowMH4xNzowMO+8iQoK5LuK5b6M44Go44KC
U0JJ6Ki85Yi444KS44KI44KN44GX44GP44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCCgrilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIEgIArnmbrooYzv
vJrmoKrlvI/kvJrnpL5TQknoqLzliLggIArnmbvpjLLnlarlj7fvvJrplqLmnbHosqHli5nlsYDp
lbfvvIjph5HllYbvvInnrKw0NOWPtyAgCuWKoOWFpeWNlOS8mu+8muaXpeacrOiovOWIuOalreWN
lOS8muOAgeS4gOiIrOekvuWbo+azleS6uumHkQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
