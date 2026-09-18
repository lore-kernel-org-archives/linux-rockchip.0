Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72E6FC982D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 10:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LESBT7YwHydrs4HIw37/wFyBodrkgq8+T9Z2dfpeMsE=; b=KM4aty1eCD+q9P
	leLH74vjk7wkkCMcC3OLvZe2cG6ZAXc8j/rRK7XwVG0ohwqtxhBxkNVtfRhQG5qtf44oCDWYXSfPA
	gHHWCFqjc21dzjRCdDNJJY/w1NupGfFKJW5Ykg+Vxkzw9hVE811OhdnRerBu0UxiW/gD+kKtFpUAb
	GCiU3Gtc3eMNrJy7ZU5Q3jWGnvuL6u6GA46VfWmUX7UWGj1psLdMcXb19yjPFuLTpdpRzgC0Zern2
	ZUwORl2dI3F47SvBDvadYcM6txkwPiCjB1PHdiuStN0vOGBmfdwHmXe9GUmak+RV6jc7WVVfRV+Ra
	JMX0rqMddrITTndbwu9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7VU0-0000000E3Nl-2v95;
	Fri, 18 Sep 2026 10:06:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7VTx-0000000E3Kc-40cB
	for linux-rockchip@bombadil.infradead.org;
	Fri, 18 Sep 2026 10:06:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1cDRNp7sN30u47HZEONtfi3hMQ/gOuKGJhHadwqE0Vk=; b=L4h6ET8T0tg+jBHS3KnXcgWnZw
	ajDigLsHziAvX5Mezz/CsyhpyR5rt23w4rfHGA6hTOm9sB6XqIe8EajKo189XntIFf6vd9vYu3tB8
	gsdNX++8LDPCKG3JwBAOilaIZF8nInBjGRCQZiJsHXPE105hV13l3YDb+IWbS05YA6GUtsXhDNkXe
	TDAPKzHuv7QEBFFiXL3vmHnEGgUKMAIBK4qfs9m76mHNCpEMrUrJJIkxbRheS5EBFMeT+eLBggxxN
	0Byv48tUShougiJ7GnmY6iCOgA69sqmdmEJr+YtxWl/EEcsl/01qRKVy5zoLShFSVt8TQEpYXTMUf
	EMGN5WNQ==;
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7VTs-00000009tws-42uv
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Sep 2026 10:06:11 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4838dbf1bbeso64473f8f.0
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Sep 2026 03:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789725967; x=1790330767; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1cDRNp7sN30u47HZEONtfi3hMQ/gOuKGJhHadwqE0Vk=;
        b=hb2kcvoZ29mLn0tHbcXAyAWl4k9XStvMq66XVBxmNiZ1ovykSTkf3l0RL+kjSZcNey
         wNThaU/kNfSQ08MQRaYseirv9HuzqyNDNTZ1szPcEF0PVBGij8489On9IetUPSFtwC/S
         /woKjG6vw+HAK0jbONg/jS85gISFYNBGMy6JAuTDgT4403ccdxALw/ZRHEeWj+J+cYL1
         YfhzEGCK6R9aXNoDEBL1LHhT66h1rfjuO88sAWWVeg07k0NcVzpgjvtYnjwMBF3FFdwU
         IYzZPr1665sV3Aiuq5rG8lUts7ZSTMPHsWgA54IkGvZKfQyR+YJUyV0gybLSBOt9+Rjr
         i7yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789725967; x=1790330767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=1cDRNp7sN30u47HZEONtfi3hMQ/gOuKGJhHadwqE0Vk=;
        b=QSJxS7WDsiGVzjRXOqEFlUyrcrNafjPUHYbzhIYdhH4Xxseq35cPKGYtzDULXvyZiS
         a/dGVE670VYawy9e8BWhQzmRXn/xUCD+WSCgH4M3P2yS5izMlPTB0oiFxruwa0JRYUJ8
         sfL8Kct3DmjSIP0Neh9JcmW5JnsjHuqCKpILFVotQQrlWvyLjlhMK2dTg0CHifJGddDX
         zaYf27h71Y9a4v8iCx5uRFTWlD1J0QoMYl/DCNrqwFDtie6XUQqbYH7gtyVJdidooptr
         YX55cB7nNI8RpmHOHdSrpPr1PdsrmNx9z0phqQaHFmdEv/aGg06pJ1bB069QxDAGgY1U
         Bw5A==
X-Forwarded-Encrypted: i=1; AKwUvBwZ9cz5r5qp0igoKeMYd0CnZvXljVQTqfEXpnrsIxv8S9qNGnlOftTi/JzKRsSbFE7wiedGjvsMCj/+3vsjGA==@lists.infradead.org
X-Gm-Message-State: AFuF++mulUorS/jayFFCK52tukWXNzBf4ijSWJ6RnHUxj2s0pAaw2/L0
	y78YUTjngOnCRT/e2ZRtgqw6Bp5P7j0Tf6CxLSbO6VaOgnV6BeUdQHMz
X-Gm-Gg: AYBFou1vgrNN+TZTWpNxQvAkKOF8QYp10DdEJVFcshMLx8xqkOPg09vZTu4uzcBZuct
	g/QQySD0I7BgEgagDJVGBW4jOUmRdVukhg7PfFX1peaEmTO6PSDPPWr3lTTokovCbjGjkW5oI+t
	/VNLWzV+6zQfHF/1L7VSX+LEHbOjYfhQib/md2CkTtlBh/W39I5JkayAi8umsFtdl94q4ebqg/t
	dmLWERv65W9s+3OF8xZc44Mm23MBVWjrs/gO9FWWB+GnVMDzjTCmBVKM9id3w1uhD1DkNwv2pCZ
	64kQNZW17ivf6lQBQeX5u+Hy4av7HKDBgbKUFpiFWkBJXtm7mvVs1xnR1Y//rXf3ymGgTjfEEZd
	6NBkEmgnmbNkx8+tkieKWu0nG8lvjgETb+Gwbqqx0shzw1SUBUc2wcGZPXXIlpusecnJZhQjj4s
	0uEwC58ha1ZJeHn4B/GLn65btKUU17oCExGOgbCLDGYomnzZa/J3275ZRdfJjNP+7OfcaI/rzgX
	2GhBLqMqnWnHISYbobmXQS9Z1hqmNkBsgHzNOKqOBXjeYtCc7DlMXl/kF/57oHbpv5Gk2WDv3Yv
	5COPXxpCXlHw2gE=
X-Received: by 2002:a05:600c:83cd:b0:49e:6806:5712 with SMTP id 5b1f17b1804b1-49fc7ddb90emr15837745e9.2.1789725967027;
        Fri, 18 Sep 2026 03:06:07 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B829B006E521A2A508563A3.dsl.pool.telekom.hu. [2001:4c4e:1b82:9b00:6e52:1a2a:5085:63a3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4871ff3a8easm2922671f8f.9.2026.09.18.03.06.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 03:06:06 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/7] accel/rocket: DVFS for the RK3588 NPU
Date: Fri, 18 Sep 2026 12:05:43 +0200
Message-ID: <20260918100543.23974-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260904130858.27803-1-royalnet026@gmail.com>
References: <20260904130858.27803-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_110609_096748_2016B977 
X-CRM114-Status: UNSURE (   6.10  )
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

Hi Tomeu,

A gentle ping on this series, two weeks on.

Conor acked 2/7, and Nicolas's review of 3/7 means a v2 is due.
Sashiko could not apply the series, for the reason you gave Jiaxing
on 31 August: its prerequisite, the slot-search fix (link below),
is not part of it. With that fix first, the series still applies to
today's drm-misc-next without conflicts (git am only, no build).

I can send v2 with the fix bundled in, so Sashiko can review it,
or wait for your comments first, whichever you prefer.

An LLM helped me draft this mail.

Thanks,
Igor

https://lore.kernel.org/r/20260904125936.26234-1-royalnet026@gmail.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
