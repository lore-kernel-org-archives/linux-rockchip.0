Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2DB3C5DF74
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2026 12:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqCbNvEP/qY3TbuScc3HdD3DlrKv3HLs0my4xMmfE3Q=; b=qjpcT3iFbjmbal
	mkF3ppp4jeHJ6tXtQ+/J72qQ//E3GvTOGHX5fm/IBQHOi7iBzqOiuXH1h646FfZuuNGAc2JhQN4bs
	NlHBlMOXoUvUihhzN0uMQ2/XoDaXGXpsKvXgoMIriQfaCIKorT6/H+F6twLRZ/4i3KLu1YBAj4PkT
	+G8CkqudiyTElPDWYf0AJU6s96BEhp/LyQaw+Em26jbFV+GT0TlnD6s1XSQE24T6l1owI8tlL0pKK
	CyeVz6nGenH6b/ZtKyjgFhBVPwnzrMUurzwGYfHsbdZ5/8WzI9n/hWYAr3GLrPdtg9eQglBGkut+t
	rkB7S4vClsIPEPdsMLjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPe-00000003oYO-2rEQ;
	Sat, 15 Aug 2026 12:22:58 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPZ-00000003oTm-1geb
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Aug 2026 12:22:54 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-47df6a5655aso201870f8f.1
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Aug 2026 05:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786796571; x=1787401371; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=GCfQiR8NUckIryEqLKUwjqn3BJTWi51kmc3ql4N0FOKqd8R0F/wc4jdeKHILo3fn8+
         +qGTt1aU7EXiPQ4AeF+7EJZSG20lnMmjhTrkkKK6rb65fdrK4GXa4DhrokoW4JW359l9
         S5RNJT7ZKm1SNjpvsS+QgNfqI3ys/kjlTFhuOdOaol4eGu2lOOsxdKgfeFQ0OUUf9+Dr
         4ZHKigDdu1LO1bDZlVVKzbtLJqZESeL4UkGmnNPpj+u+QwKsdpKLZYZwkl3XBZTwF3B1
         cxzv+xHQoIZDsF/H2GZk9RwH3a/POQEul5lMgjt9DOo1LDBDRWx0cCeHNE3ZlG8czagO
         PKug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786796571; x=1787401371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=qq9+kdLz72L+3kKqgjcq+jnWb76PPVxXBIS2eq0YGJQMWiotxiEwxJw6Jul5NKv6N+
         oG/xN/N+wOD9rmfIUMLmUg6JYJHrr5aviWu8hybIRE0JNtA8YVAX+MyMJkB7TnjizINf
         oe+Obd+wXBOPjpZW2EUOa+tbq5N7SG0fUVQI4fbWdpELSlpxMXBj+j6+I7xTk2yHaAiN
         2QT4mRTSOKUPkAEvE2YehLVz9ZoYNxfEYF0prmJ2qa1CxY00Dd+uAjaFvCS8rjA/7yh5
         RI7FXckZr5F49MbhvDN8R/ES5Y2Tt66Q2ZM7FxckTBK77iUymcs9ekQ26AtlmKUBIQHf
         4Mww==
X-Forwarded-Encrypted: i=1; AHgh+Rp1OoovVmAfYO4Wxevwbo6kUJe1UyplETBVEkDIJFABUW6YIPAQtXiRSLo0imhnbXBoXpnm/mN+Nvks3r3+Cw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxl7hoJ08VpIgiL80LFJ7oMQf86gVCL8Ogv4X1ngifrip5h44bg
	7Lg9Ptz6HSOnLRlduGttiYDW1NjNKnMqD1raW7VgP7VxJbl8+NaGvBMP
X-Gm-Gg: AR+sD13MRMdBE7VnBMG5UvCDvXajex4o0CsZZFe8slKvVN04kHc3ixY6Z7x8U/ZKZal
	lF0W8xrKbnrPIbhj+W8aa8vC9g+YGdIU32DJrMxormA+VbUWk4ssJ30+T0oah8ZFIKR+pj0ULxD
	kA4ccLB+2xd65Q7aDsBlZwtbgY0YjYhI/thtyF4Dp8yU6JzYDJb5xkUl8nqgC4nk+fE+H3R3MfX
	h1kfqHlnbBN0r2y4ojk6pIWcA7muapdphxqp1zUjc9C+br9hNh1W9OK2sk5cLWf9YZiQLFpPZJm
	zlrMbQJEn6Ux5U4oougMe3Z/Gzun6tXlv5fc8uk9mGe8FJrN3WhVuu9XGmjPLtp9ULbiDuYaYBF
	dk7mIjtq7AnjtcJuxKNjEnrftF5prS9BpmHjWSp6wUOwDujCWy51aU1aZwwJ+mRbEtEXjV1F7/p
	HFdSLBtI3JX4OXuwiGMFC/5Y6Hoe3o+iPSogf+o7UnppdauorGhhTOMGv36sIow4lIh2Aym9Zsx
	+ykt71kVObUVRuthrUesB3uz4yMlPpsFPr6BMRGvVwYl8EVi5MW+vR6dsHSAnMOU8j5
X-Received: by 2002:a05:6000:1446:b0:47f:959f:d5e with SMTP id ffacd0b85a97d-481606984d0mr9483486f8f.0.1786796571543;
        Sat, 15 Aug 2026 05:22:51 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B932600BF05B505F15B0ECC.dsl.pool.telekom.hu. [2001:4c4e:1b93:2600:bf05:b505:f15b:ecc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4815f1fff25sm26930649f8f.3.2026.08.15.05.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 05:22:51 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v14 30/38] usb: dwc3: core: add post PHY registration hook for platform glue
Date: Sat, 15 Aug 2026 14:22:33 +0200
Message-ID: <20260815122239.65405-3-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-30-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com> <20260813-rockchip-usbdp-cleanup-v14-30-b5ad9c68fa11@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260815_052253_575252_3DEC2A92 
X-CRM114-Status: UNSURE (   4.75  )
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

Tested on Orange Pi 5 Plus (RK3588), 7.2.0-rc7 from rockchip-devel at
ea51774c5c42; details in my reply to the cover letter.

Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
