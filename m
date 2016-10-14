From: =?utf-8?B?UGF3ZcWC?= Jarosz <paweljarosz3691-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v2 0/2] Assign RK3066 clocks at boot time
Date: Fri, 14 Oct 2016 14:16:21 +0200
Message-ID: <cover.1476447057.git.paweljarosz3691@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: paweljarosz3691-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-I+IVW8TIWO2tmTQ+vhA3Yw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

VGhpcyBwYXRjaHNldCBzZXRzIHJrMzA2NiBQTEwsIENQVSBhbmQgUEVSSSBjbG9ja3Mgd2hpbGUg
a2VybmVsIGluaXQuCgpQYXdlxYIgSmFyb3N6ICgyKToKICBjbGs6IHJvY2tjaGlwOiBBZGQgYmlu
ZGluZ3MgZm9yIGNwdSBhbmQgcGVyaSBjbG9ja3Mgb24gcmszMDY2CiAgQVJNOiBkdHM6IHJvY2tj
aGlwOiBpbml0aWFsaXplIHJrMzA2NiBQTEwgY2xvY2sgcmF0ZQoKIGFyY2gvYXJtL2Jvb3QvZHRz
L3JrMzA2NmEuZHRzaSAgICAgICAgICAgICAgICB8ICA5ICsrKysrKysrKwogZHJpdmVycy9jbGsv
cm9ja2NoaXAvY2xrLXJrMzE4OC5jICAgICAgICAgICAgIHwgMTIgKysrKysrLS0tLS0tCiBpbmNs
dWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JrMzE4OC1jcnUtY29tbW9uLmggfCAgOCArKysrKysrLQog
MyBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKLS0gCjIu
Ny40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
