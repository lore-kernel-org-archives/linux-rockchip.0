Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23B67CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 07:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvYCMmmCR2Jp2jq6wBUGmYy+uJrf5LHFXJyWs0ugSV8=; b=12ZUuwyRT1HGVq
	eI9m9Yur3JubHWfYR98kamJVxTdfg1eojuIQZuxcd/ytRBnKm/vnOLjP9twTvNkQgIovX9BhIm2k2
	0cow4CKMJdHL7uqweypml4f+o9NEF0oGiB0M2cKQkw+pIL/i3LgzPUaULphfap5/gjCRr3RzWUzMd
	jDKjgcI3N7X3TYydyaZYK2einqK75z4BBf9kfolau+kR7z4JjyavY3jhPq7aBIdQ/aMAtDdh4owEY
	x+lMslIdazV7+iULTk1TvNkaeBiT828HtZsYcF8WTk5SKNkcCaDXdMhSI0i2LnSzeYcyW3j3rXZfL
	nE09s3mKLAI4KS4hzRkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl1YR-0000000DJky-2Y38;
	Mon, 02 Sep 2024 07:32:51 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl1XZ-0000000DJfa-1KIO
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Sep 2024 07:32:50 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2f3ffc7841dso35989651fa.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Sep 2024 00:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725262315; x=1725867115; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VYWxwAvhkLuKPpE2aKjnqJ2tnF3raRJ7v8jbIXvonwc=;
        b=I8fquUeAj8ZBXXBKKmjulzB43jSWFv4bn1JFHN+CdAyalrWOVO0iBQcp0HliHcLmAM
         rN+ExZmFr0tU1qsuexMUe3fPN9pxEQ1rsf8wBPIUJIusgWuj+cWC9Xm+UrDuXNabmzKw
         6KrWEes5qCUKWbsDz6aARN5SQw7Rx73gbuc8BMlHLrN0isd1sIctftYQ8R7/dko8hcbQ
         brUdTXr4e7hCpu2NwjUYEhM8M7c5kCD9XILNrizb7/Qm8c39r+d9z/9LQHmFGIvLN9o/
         RljI7/P8lUDrUViqnh55GcrnTxyWBKLN0Gpk+LUTvsX/bW7V0Lk3JpHSvNqPErjxGxmo
         i3KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725262315; x=1725867115;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VYWxwAvhkLuKPpE2aKjnqJ2tnF3raRJ7v8jbIXvonwc=;
        b=gwKj8PTmFOMrisR4d2rrwT+4ktmE73S1XIBjE27cAqUNEMkeTy5bct68aXJGxVE9Nr
         TwhNLHIbfxXmmn+xxC9i8KN5kA0vgtggxSPUfUjsSyg77ZNaJ68f1ZaH+SgYBk3Gj8rE
         R24izqr5eazqG1sezTzrmLQTL4dk9uv22lHyNFfE0ANvg2WJk5b7rpfYjjd8CqBnmApV
         W/7Shx9/IOl/ZEeGZ/U8NlKl5D45KY6dmkIAo2YWvvIFlhHQchStM6W2GYQtlJc20PLc
         LydSZhSnxctmulGAdIfhfvGeFakaVLav+R2jDwE4kHlZMtGcn/R1UWfRCR7gwNXhilHc
         SnIg==
X-Forwarded-Encrypted: i=1; AJvYcCWuOkCmiJafW/DgkX7Ftrb+PxESeeqjpXo4eTQZzKTtTGrtxETJ/o+wpdfd4oMLX6loi94W2GyWz76cPeXGVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwqZOnFx2M4qR0+3jQ82sYgAieEyUmpKlThxfXZWU+JqMbh/ZXM
	2tZUcCf1WfmwCQv9QkZOLoZLXHbHgC7NqzW5jgTWKr8ws4J5dW8c
X-Google-Smtp-Source: AGHT+IFLKS0s5tWhZgm741hN+pzHdXBktAkClb8elyk1pVRpR5P/QnqJ36pX/VvIlCY9gtwU7+0+qQ==
X-Received: by 2002:a05:651c:198d:b0:2f1:929b:aef6 with SMTP id 38308e7fff4ca-2f610923301mr105230021fa.36.1725262314775;
        Mon, 02 Sep 2024 00:31:54 -0700 (PDT)
Received: from U19.ag.local ([83.69.218.234])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f614ed1787sm16894491fa.10.2024.09.02.00.31.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 00:31:54 -0700 (PDT)
From: Alibek Omarov <a1ba.omarov@gmail.com>
To: mkl@pengutronix.de,
	linux-can@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Alibek Omarov <a1ba.omarov@gmail.com>
Subject: Re: [can-next,v3,00/20] can: rockchip_canfd: add support for CAN-FD IP core found on Rockchip RK3568
Date: Mon,  2 Sep 2024 10:31:17 +0300
Message-Id: <20240902073116.1620038-1-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_003157_375619_A8DF966B 
X-CRM114-Status: UNSURE (   7.30  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Resent to include linux-can@vger.kernel.org by Marc's request.

>This series adds support for the CAN-FD IP core found on the Rockchip
>RK3568.

>The IP core is a bit complicated and has several documented errata.
>The driver is added in several stages, first the base driver including
>the RX-path. Then several workarounds for errata and the TX-path, and
>finally features like hardware time stamping, loop-back mode and
>bus error reporting.

We've tried this on v2 patch set, with a custom board with Radxa CM3I
connected and it's even more stable than BSP driver we backported ourselves.

Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>

Cheers,
Alibek.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
