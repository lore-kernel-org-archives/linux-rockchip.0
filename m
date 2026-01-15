Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49309D46610
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 18:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwtktI5aMkwff4CWYpDMmfIF9mCUkFDgoHDVXHGSJn4=; b=Ri8A0gWPpJyFCn
	g1xPaoVlfaThZkVytX4FxvV6V15iMoBPG2GP4pnkEQoBuZEcRM3bH38w4f2zDeERd2796RTyQMqKt
	ZoctZ6bIj3ArEu1QR/aWfn+bFObfXGQaB1mSxJTwj/1k0DG7ECOuIdq7lwQC3LqA312cG+8urGqZ3
	s9o7bXjdynSllN67u7F+fwfco+6yFx1cp0CjL1xO92VVYEZg8owDfEHAwHwJ/xbtQGaniheh+xTZz
	2KOKzuQdAJxLYKuZ6NKQiReeT1riqt8V6hJK6dT4Obbu59IJTw/rMwp2YJ6gMEAq4fiK4mtujK5VZ
	eJ05WhMMjOLgXRq9U1IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgSUZ-0000000D0Mw-0lIF;
	Thu, 15 Jan 2026 18:54:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgSUM-0000000D0K8-0cB1
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jan 2026 18:54:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3E48544383;
	Thu, 15 Jan 2026 18:54:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB394C116D0;
	Thu, 15 Jan 2026 18:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768503272;
	bh=98e4lR5ellL77qMHm5OIbYjTWV660uTxn/sNbZ2b52Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EGk1+rC2qRpdcWgov11G4chGSoaTnaT3BIpo5z9ahfNMVGujIk2F7pRSorjzdkq76
	 deXlsZp+422uJOOrISTDod6mvnKkO7cpFinQGB4jyW/TSP9IY9B9hFrKrbIV+0qaQC
	 J/FfLTauqBq4HpE///s6e6VWzOQUAAMrj9gOG3RFET+Q6RlIEKYvfaQphrn8BUxn/R
	 35jguhVdQoG8JPKyfP9v0ltLsjBBker5IT2RFgVlcdcWik+QwSIElPTXr+FdFA/ZBQ
	 Q1QG6PiTPEuCs22vWtwTiyKGYvQao9Fh7fhl+/7iHJPGbrktRTL7Y+ltjooBxbijs5
	 6Jw43PLqKHwRg==
Date: Thu, 15 Jan 2026 12:54:31 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: krzk+dt@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	dmitry.torokhov@gmail.com, jesszhan0024@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>, simona@ffwll.ch,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com, heiko@sntech.de,
	neil.armstrong@linaro.org, aweinzerl13@yahoo.com, jagan@edgeble.ai,
	conor+dt@kernel.org, mripard@kernel.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 4/6] dt-bindings: arm: rockchip: Add Anbernic RG-DS
Message-ID: <176850327047.1003915.10842845210082585223.robh@kernel.org>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260113195721.151205-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_105435_092610_36413565 
X-CRM114-Status: UNSURE (   8.18  )
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


On Tue, 13 Jan 2026 13:57:19 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for the Anbernic RG-DS.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
