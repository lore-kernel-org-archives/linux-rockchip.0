Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39BC9CA0FF9
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 19:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RMHioMzwy/C+eozTjokV5UI/mBYXw3BYJ3aGZXQAKc=; b=ggjgOiJeG7ZjYV
	n8lHRiJe3WjqvaChddoIki8cqgZuKV+YJd0v3PDqWPCM3vch2BdNclyNjcOJ1zM5eYl4IOBnLvvxi
	vyMYSl4YgBWeca7ajHjwnw9mNkW3Eai/RsfOx/Do2PmBoqo4ViIUFSa+ajdgkOQDoadsTr/IW/D/Q
	UsoeFjfr4cHVy1yp5hlBYc5niFpAu6A//o8MiBSeKRtFSK6YI50HlxqWbo+IfbMzBeZX0VK2WK3bq
	729M4pbHiqJXwBeRgP5KhAIPFb0vzj8IuJ3MQpASzO0qncD3dtjf9MW1waFgFXGc5E4ZfapGK7BjS
	PDt2itgqkU8jegpbJQ+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us4tN-00000006l2w-1vfS;
	Fri, 29 Aug 2025 19:36:09 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us1DB-00000006EVE-1PcF
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 15:40:22 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-7f889d176c2so277665485a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 08:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1756482020; x=1757086820; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vMllst7gcBdZpXi7zdiPGvGRd+qrzm4OkoKr77sAH60=;
        b=frtE3WzRPir046AXoIPi5CQLh/ULmoA77buvNsgOBhx9phfSbKMRq9LuC58sJs1I6a
         +jj7J9qfNQgKLtJYk+IN6gntx4waA4EYS2lVaLSl9FFpsuPEbl/hiDGjY7F8YihH0KHq
         8M89vTDDNisWILOU/moVAVJpyzCwErslR+PQNjd8IEkbrXN3HSFtEAc2VmfbnwN0CDoI
         GW/UQYHrlIxLJ8ExoXt3VRqc8IY5VsM9ij4v9RbYiueimiULH5nIsMdCGgGQ8c0sHwNI
         d4b1Imn+kCWB1XRs/gpOGlM5P9TPkPU82MfPWa8+/p5YH8XfebhgKiDzzXlQL+WMRERy
         sQTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756482020; x=1757086820;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vMllst7gcBdZpXi7zdiPGvGRd+qrzm4OkoKr77sAH60=;
        b=FRcD+/VIFPuXGqWL8bxx7am9Eoh8itwas/M7pXvZPmDAdcpMbtWkMjGU/6AK5clzS2
         3z2fkFwDGlKWarnlxTxQkHNFPnBfbo1YFs03ufKm+wQeIG6m5GGr7KkEdL+w0iDEfoDD
         xdz/bnXE0PUTRon0BR1d3wwSQmTdM2JO8wp8TOpNbUetqVu+soGzTXjkQd8TOUy2+ZP8
         R2GmbrlmkqenO/Kfd6CGaFKn7LcDRK+4eSFJlK4kFZWuXouVLraFvhEXRW9p7xQuq/6t
         6BK/DlY4VW/z5tBRBrUa5D3dgMDlfnUj+91VLut3WiAvCVX8PYaIc49e5796nj0GuXzb
         h66A==
X-Forwarded-Encrypted: i=1; AJvYcCW2oYmVKFDocb5m9+s+AiYCFjGPV+JmfQuE9xaOJC189ytCTmeoGCjy+QS5kjTnzY0kqMkZt0XaAfTaEnhqEw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+xNqAX9JxyCVlc/hHzv4Rqp19JFls5GfoDcGTlpjlPX50/A0m
	8LH9SMcwCkYuvKbl/k19DttX0S/61fGCbDyLh4/X7oefA8f6M6YKFbwM9JWLGOiNKNKbg8WuGzw
	gY9U3Xa8VaSgatUNesdm0yXNQK0IaNk8aaomESSHhTA==
X-Gm-Gg: ASbGncuqEE1Fa836rbLDg+HXm8Uq77HXbYR6cqMvjInYF1VgNv9zLFKFnwD5kv4tS1k
	s2OYEbS/bksi9Qhmbkw68xH2JU/+/b81Paz1LnJpziz4A/QzHBau3vLO87rZISeT7DBUA1jJ5Lp
	FbRYRHhuOe74QKJ3k1a6LLvODSV0FsclrjUZaxHN3zVzaqf7ukQwoS6lomx/v4Pu6LSO9PvbllU
	P3WtnVEk2Zy7huJ
X-Google-Smtp-Source: AGHT+IE8Uc8yE6e7x+T9rqx7j4SzBv64YwjT0y2LqCPYIhx7HTc0mU0MQAVdWTXexDU/wbuTY+TnRdDvA85/7NRQ3wc=
X-Received: by 2002:a05:620a:a08c:b0:7e9:f81f:ce8a with SMTP id
 af79cd13be357-7ea11095a39mr2507020285a.76.1756482020300; Fri, 29 Aug 2025
 08:40:20 -0700 (PDT)
MIME-Version: 1.0
References: <20250825-rk3588-10bpc-v2-0-955622d16985@collabora.com>
In-Reply-To: <20250825-rk3588-10bpc-v2-0-955622d16985@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 29 Aug 2025 17:40:08 +0200
X-Gm-Features: Ac12FXwMRvICk8YV3mQ4_G0eTMWJVkBD72BsJ-WaKgZKQMAHDd1L4Y9QuXJV1oE
Message-ID: <CAPj87rNgW5-1YzurL-sFJF2SsGFmENF9JD+82cqHAYLfa67LZA@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] High color depth support for RK3576/RK3588 HDMI output
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_084021_375548_6C137656 
X-CRM114-Status: GOOD (  10.22  )
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

Hi Cristian,

On Mon, 25 Aug 2025 at 12:08, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> Since both Rockchip RK3576 and RK3588 SoCs are capable of handling 10
> bpc color depth HDMI output and we've already landed the required HDPTX
> PHY driver changes to support the setup, let's add the missing bits and
> pieces to VOP2, DW HDMI QP encoder and bridge library.
>
> Please note this conflicts with the HDMI CEC series [1], hence I added
> that as a b4-managed dependency.

Thanks, no comments on this one, but having not read the PHY changes
at all, the series is:
Acked-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
